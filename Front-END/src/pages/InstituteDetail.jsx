import { useParams } from 'react-router-dom';
import { useEffect, useState } from 'react';
import { motion } from 'framer-motion';
import Select from "react-select"; // أضف هذا في الأعلى

function InstituteDetail() {
  const { id } = useParams();
  const [institute, setInstitute] = useState(null);
  const [countries, setCountries] = useState([]);
  const [selectedMajor, setSelectedMajor] = useState('');
  const [showToast, setShowToast] = useState(false);

  useEffect(() => {
    fetch('http://192.168.0.43:8000/api/institutes/')
      .then(res => res.json())
      .then(data => {
        const found = data.data.find(i => i.id === parseInt(id));
        setInstitute(found);
      });

    fetch('http://192.168.0.43:8000/api/countries')
      .then(res => res.json())
      .then(data => setCountries(data.data));
  }, [id]);

  if (!institute) return (
    <motion.p className="p-6 text-center text-gray-500" initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      جاري التحميل...
    </motion.p>
  );
 return (
    <>
      {showToast && (
        <div className="fixed top-4 right-4 bg-green-600 text-white px-4 py-2 rounded shadow z-50">
          ✅ تم الإرسال بنجاح
        </div>
      )}

      <motion.div className="max-w-4xl mx-auto p-8 bg-white rounded-xl shadow-lg mt-10"
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.8, ease: 'easeOut' }}
      >
        <motion.h1 className="text-4xl font-extrabold mb-6 text-indigo-900"
          initial={{ opacity: 0, y: -10 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.3 }}
        >
          {institute.name}
        </motion.h1>

        {institute.image_url && (
          <motion.img
            src={institute.image_url}
            alt={institute.name}
            className="w-full h-[400px] object-cover rounded-lg border border-gray-200 mb-8 shadow-md"
            loading="lazy"
            initial={{ scale: 0.95, opacity: 0 }}
            animate={{ scale: 1, opacity: 1 }}
            transition={{ delay: 0.5, duration: 0.6 }}
          />
        )}

        <motion.div
          className="prose prose-indigo max-w-none mb-10 text-gray-700"
          dangerouslySetInnerHTML={{ __html: institute.description }}
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.7, duration: 0.7 }}
        />

        <motion.h2
          className="text-3xl font-semibold mb-5 text-indigo-800"
          initial={{ opacity: 0, x: -20 }}
          animate={{ opacity: 1, x: 0 }}
          transition={{ delay: 0.9, duration: 0.6 }}
        >
          التخصصات
        </motion.h2>

        {institute.majors.length > 0 ? (
          <motion.select
            name="major_name"
            className="w-full p-3 border border-gray-300 rounded-lg mb-6 shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 transition"
            value={selectedMajor}
            onChange={(e) => setSelectedMajor(e.target.value)}
          >
            <option value="">اختر التخصص</option>
            {institute.majors.map((m) => (
              <option key={m.id} value={m.name}>{m.name}</option>
            ))}
          </motion.select>
        ) : (
          <motion.p
            className="text-gray-500"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ delay: 1 }}
          >
            لا توجد تخصصات متاحة حالياً.
          </motion.p>
        )}
      </motion.div>

      <StudentForm
        institute={institute}
        countries={countries}
        selectedMajor={selectedMajor}
        onSuccess={() => {
          setShowToast(true);
          // إخفاء الإشعار بعد 3 ثواني مثلاً
          setTimeout(() => setShowToast(false), 3000);
        }}
      />
    </>
  );
}



function StudentForm({ institute, countries, selectedMajor, onSuccess }) {
  const [form, setForm] = useState({
    name: '',
    university_name: institute.name,
    major_name: selectedMajor,
    father_name: '',
    father_phone: '',
    student_phone: '',
    father_country: '',
    target_country: '',
    highschool_certificate: null,
    university_certificate: null,
    passport: null,
    personal_photo: null,
    extra_file: null
  });
  // توليد الخيارات بشكل مناسب للمكتبة
const countryOptions = countries.map(c => ({
  value: c.name,
  label: c.name,
}));

  const [loading, setLoading] = useState(false);

  useEffect(() => {
    setForm(prev => ({ ...prev, major_name: selectedMajor }));
  }, [selectedMajor]);

  const handleChange = (e) => {
    const { name, value, files } = e.target;
    setForm(f => ({ ...f, [name]: files ? files[0] : value }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);

    const formData = new FormData();
    Object.entries(form).forEach(([key, val]) => {
      if (val !== null) formData.append(key, val);
    });

    try {
      const res = await fetch('http://192.168.0.43:8000/api/students/submit', {
        method: 'POST',
        body: formData
      });
      const data = await res.json();
      if (data.success) onSuccess();
    } catch {}

    setLoading(false);
  };

  return (
    <form onSubmit={handleSubmit} className="max-w-xl mx-auto mt-10 bg-white p-6 rounded shadow space-y-4">
      <h2 className="text-2xl font-bold mb-4 text-center">نموذج التقديم</h2>

      <input type="text" name="name" placeholder="اسم الطالب" value={form.name} onChange={handleChange} className="w-full p-2 border rounded" required />
<Select
  name="father_country"
  options={countryOptions}
  value={countryOptions.find(opt => opt.value === form.father_country)}
  onChange={(selected) =>
    setForm(f => ({ ...f, father_country: selected ? selected.value : "" }))
  }
  placeholder="اختر دولة الأب"
  className="mb-4"
  classNamePrefix="react-select"
  menuPlacement="bottom" // يفتح لتحت فقط
  isClearable
/>

<Select
  name="target_country"
  options={countryOptions}
  value={countryOptions.find(opt => opt.value === form.target_country)}
  onChange={(selected) =>
    setForm(f => ({ ...f, target_country: selected ? selected.value : "" }))
  }
  placeholder="اختر الدولة المستهدفة"
  className="mb-4"
  classNamePrefix="react-select"
  menuPlacement="bottom"
  isClearable
/>


      <input type="text" name="father_name" placeholder="اسم الأب" value={form.father_name} onChange={handleChange} className="w-full p-2 border rounded" />
      <input type="text" name="father_phone" placeholder="هاتف الأب" value={form.father_phone} onChange={handleChange} className="w-full p-2 border rounded" />
      <input type="text" name="student_phone" placeholder="هاتف الطالب" value={form.student_phone} onChange={handleChange} className="w-full p-2 border rounded" />

      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <label className="block">
          شهادة الثانوية:
          <input type="file" name="highschool_certificate" onChange={handleChange} className="mt-1 file-input" />
        </label>
        <label className="block">
          شهادة الجامعة:
          <input type="file" name="university_certificate" onChange={handleChange} className="mt-1 file-input" />
        </label>
        <label className="block">
          جواز السفر:
          <input type="file" name="passport" onChange={handleChange} className="mt-1 file-input" />
        </label>
        <label className="block">
          الصورة الشخصية:
          <input type="file" name="personal_photo" accept="image/*" onChange={handleChange} className="mt-1 file-input" />
        </label>
        <label className="block col-span-2">
          ملف إضافي:
          <input type="file" name="extra_file" onChange={handleChange} className="mt-1 file-input" />
        </label>
      </div>

      <button type="submit" disabled={loading} className="w-full bg-indigo-600 text-white py-2 rounded hover:bg-indigo-700 transition">
        {loading ? 'جاري الإرسال...' : 'إرسال الطلب'}
      </button>
    </form>
  );
}

export default InstituteDetail;