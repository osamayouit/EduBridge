// InstituteDetail.jsx
import { useParams } from 'react-router-dom';
import { useEffect, useState } from 'react';
import { motion } from 'framer-motion';
import Select from "react-select";
import axios from "axios";

function InstituteDetail() {
  const { id } = useParams();
  const [institute, setInstitute] = useState(null);
  const [countries, setCountries] = useState([]);
  const [selectedMajor, setSelectedMajor] = useState('');
  const [showToast, setShowToast] = useState({ visible: false, message: '', type: '' });

  useEffect(() => {
    axios.get('http://192.168.0.43:8000/api/institutes/').then(res => {
      const found = res.data.data.find(i => i.id === parseInt(id));
      setInstitute(found);
    });
    axios.get('http://192.168.0.43:8000/api/countries').then(res => setCountries(res.data.data));
  }, [id]);

  const handleFormSuccess = (msg, type = 'success') => {
    setShowToast({ visible: true, message: msg, type });
    setTimeout(() => setShowToast({ visible: false, message: '', type: '' }), 3000);
  };

  if (!institute) return <motion.p className="p-6 text-center text-gray-500" initial={{ opacity: 0 }} animate={{ opacity: 1 }}>جاري التحميل...</motion.p>;

  return (
    <>
      {showToast.visible && (
        <div className={`fixed top-4 right-4 px-4 py-2 rounded shadow z-50 ${showToast.type === 'success' ? 'bg-green-600' : 'bg-red-600'} text-white`}>
          {showToast.message}
        </div>
      )}

      <motion.div className="max-w-4xl mx-auto p-8 bg-white rounded-xl shadow-lg mt-10" initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} transition={{ duration: 0.8 }}>
        <motion.h1 className="text-4xl font-extrabold mb-6 text-indigo-900" initial={{ opacity: 0, y: -10 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.3 }}>
          {institute.name}
        </motion.h1>

        {institute.image_url && (
          <motion.img src={institute.image_url} alt={institute.name} className="w-full h-[400px] object-cover rounded-lg border border-gray-200 mb-8 shadow-md" loading="lazy" initial={{ scale: 0.95, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} transition={{ delay: 0.5, duration: 0.6 }} />
        )}

        <motion.div className="prose prose-indigo max-w-none mb-10 text-gray-700" dangerouslySetInnerHTML={{ __html: institute.description }} initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 0.7 }} />

        <motion.h2 className="text-3xl font-semibold mb-5 text-indigo-800" initial={{ opacity: 0, x: -20 }} animate={{ opacity: 1, x: 0 }} transition={{ delay: 0.9 }}>
          التخصصات
        </motion.h2>

        {institute.majors.length > 0 ? (
          <motion.select name="major_name" className="w-full p-3 border border-gray-300 rounded-lg mb-6 shadow-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 transition" value={selectedMajor} onChange={(e) => setSelectedMajor(e.target.value)}>
            <option value="">اختر التخصص</option>
            {institute.majors.map((m) => (
              <option key={m.id} value={m.name}>{m.name}</option>
            ))}
          </motion.select>
        ) : (
          <motion.p className="text-gray-500" initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 1 }}>لا توجد تخصصات متاحة حالياً.</motion.p>
        )}
      </motion.div>

      {/* نموذج التقديم داخل نفس الملف */}
      <StudentForm
        institute={institute}
        countries={countries}
        selectedMajor={selectedMajor}
        onSuccess={handleFormSuccess}
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
  father_country_code: '+967',
  father_phone: '',
  student_country_code: '+967',
  student_phone: '',
  father_country: '',
  target_country: '',
  highschool_certificate: null,
  university_certificate: null,
  passport: null,
  personal_photo: null,
  extra_file: null
});

  const arabCountries = [
  { code: '+966', name: 'السعودية 🇸🇦' },
  { code: '+20',  name: 'مصر 🇪🇬' },
  { code: '+971', name: 'الإمارات 🇦🇪' },
  { code: '+965', name: 'الكويت 🇰🇼' },
  { code: '+973', name: 'البحرين 🇧🇭' },
  { code: '+974', name: 'قطر 🇶🇦' },
  { code: '+968', name: 'عُمان 🇴🇲' },
  { code: '+964', name: 'العراق 🇮🇶' },
  { code: '+962', name: 'الأردن 🇯🇴' },
  { code: '+963', name: 'سوريا 🇸🇾' },
  { code: '+961', name: 'لبنان 🇱🇧' },
  { code: '+212', name: 'المغرب 🇲🇦' },
  { code: '+216', name: 'تونس 🇹🇳' },
  { code: '+213', name: 'الجزائر 🇩🇿' },
  { code: '+249', name: 'السودان 🇸🇩' },
  { code: '+967', name: 'اليمن 🇾🇪' }
];

  const [loading, setLoading] = useState(false);
  const [step, setStep] = useState(1);

  const countryOptions = countries.map(c => ({ value: c.name, label: c.name }));

  useEffect(() => {
    setForm(prev => ({ ...prev, major_name: selectedMajor }));
  }, [selectedMajor]);

const validateStepOne = () => {
  const isNumber = (val) => /^[0-9]+$/.test(val.trim());
  
  const validatePhone = (label, phone) => {
    if (!phone.trim()) return onSuccess(`اكتب رقم ${label}`, "error") || false;
    if (!isNumber(phone)) return onSuccess(`رقم ${label} يجب أن يكون أرقام فقط`, "error") || false;
    if (phone.length < 5) return onSuccess(`رقم ${label} غير صالح (5 أرقام على الأقل)`, "error") || false;
    return true;
  };

  if (!form.name.trim()) return onSuccess("اسم الطالب مطلوب", "error") || false;
  if (!form.major_name) return onSuccess("اختر التخصص", "error") || false;
  if (!form.father_country) return onSuccess("اختر دولة الأب", "error") || false;
  if (!form.target_country) return onSuccess("اختر الدولة المستهدفة", "error") || false;
  if (!form.father_name.trim()) return onSuccess("اكتب اسم الأب", "error") || false;
  
  if (!validatePhone("الأب", form.father_phone)) return false;
  if (!validatePhone("الطالب", form.student_phone)) return false;

  return true;
};



  const handleChange = (e) => {
    const { name, value, files } = e.target;
    setForm(f => ({ ...f, [name]: files ? files[0] : value }));
  };
const handleSubmit = async (e) => {
  e.preventDefault();
  if (!validateStepOne()) return;
  setLoading(true);

  const formData = new FormData();

  // أضف الأرقام مع مفتاح الدولة
  formData.append('father_phone', form.father_country_code + form.father_phone);
  formData.append('student_phone', form.student_country_code + form.student_phone);

  // باقي البيانات
  Object.entries(form).forEach(([key, val]) => {
    if (key === 'father_phone' || key === 'student_phone') return; // تخطيناهم لأننا أضفناهم يدويًا
    if (val !== null) formData.append(key, val);
  });

    try {
      const res = await axios.post('http://192.168.0.43:8000/api/students/submit', formData, {
        headers: { 'Content-Type': 'multipart/form-data' }
      });

      if (res.data.success) {
        onSuccess('تم إرسال الطلب بنجاح');
        setForm({
          name: '', university_name: institute.name, major_name: selectedMajor, father_name: '', father_phone: '',
          student_phone: '', father_country: '', target_country: '', highschool_certificate: null,
          university_certificate: null, passport: null, personal_photo: null, extra_file: null
        });
        setStep(1);
      } else {
        onSuccess(res.data.message || 'حدث خطأ أثناء الإرسال.', 'error');
      }
    } catch {
      onSuccess('فشل في الإرسال، حاول مرة أخرى.', 'error');
    } finally {
      setLoading(false);
    }
  };

  return (
    <form onSubmit={handleSubmit} className="max-w-xl mx-auto mt-10 bg-white p-6 rounded shadow space-y-4">
      <div className="flex justify-center mb-4 text-sm font-medium text-indigo-700">
        <span className={`px-3 py-1 rounded-full ${step === 1 ? 'bg-indigo-600 text-white' : 'bg-gray-200'}`}>1 البيانات</span>
        <span className="mx-2">→</span>
        <span className={`px-3 py-1 rounded-full ${step === 2 ? 'bg-indigo-600 text-white' : 'bg-gray-200'}`}>2 الملفات</span>
      </div>

      {step === 1 && (
        <>
          <input type="text" name="name" placeholder="اسم الطالب" value={form.name} onChange={handleChange} className="w-full p-2 border rounded" />

          <Select name="father_country" options={countryOptions} value={countryOptions.find(opt => opt.value === form.father_country)} onChange={(selected) => setForm(f => ({ ...f, father_country: selected ? selected.value : "" }))} placeholder="اختر دولة الأب" classNamePrefix="react-select" menuPlacement="bottom" isClearable />

          <Select name="target_country" options={countryOptions} value={countryOptions.find(opt => opt.value === form.target_country)} onChange={(selected) => setForm(f => ({ ...f, target_country: selected ? selected.value : "" }))} placeholder="اختر الدولة المستهدفة" classNamePrefix="react-select" menuPlacement="bottom" isClearable />

          <input type="text" name="father_name" placeholder="اسم الأب" value={form.father_name} onChange={handleChange} className="w-full p-2 border rounded" />
        
        {/* رقم الأب */}
<div className="grid grid-cols-3 gap-2">
  <select
    name="father_country_code"
    value={form.father_country_code}
    onChange={handleChange}
    className="col-span-1 border p-2 rounded text-sm"
  >
    {arabCountries.map((c) => (
      <option key={c.code} value={c.code}>{c.name}</option>
    ))}
  </select>
  <input
    type="text"
    name="father_phone"
    placeholder="رقم الأب"
    value={form.father_phone}
    onChange={handleChange}
    className="col-span-2 border p-2 rounded"
  />
</div>

{/* رقم الطالب */}
<div className="grid grid-cols-3 gap-2">
  <select
    name="student_country_code"
    value={form.student_country_code}
    onChange={handleChange}
    className="col-span-1 border p-2 rounded text-sm"
  >
    {arabCountries.map((c) => (
      <option key={c.code} value={c.code}>{c.name}</option>
    ))}
  </select>
  <input
    type="text"
    name="student_phone"
    placeholder="رقم الطالب"
    value={form.student_phone}
    onChange={handleChange}
    className="col-span-2 border p-2 rounded"
  />
</div>

        
          <button type="button" onClick={() => validateStepOne() && setStep(2)} className="w-full bg-indigo-600 text-white py-2 rounded hover:bg-indigo-700 transition">
            التالي
          </button>
        </>
      )}

      {step === 2 && (
        <>
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-6">
  {[
    { label: "شهادة الثانوية", name: "highschool_certificate", required: true },
    { label: "شهادة الجامعة", name: "university_certificate", required: true },
    { label: "جواز السفر", name: "passport", required: true },
    { label: "الصورة الشخصية", name: "personal_photo", required: true, accept: "image/*" },
    { label: "ملف إضافي (اختياري)", name: "extra_file", required: false }
  ].map(({ label, name, required, accept }) => (
    <div key={name} className={`col-span-1 ${name === 'extra_file' ? 'sm:col-span-2' : ''}`}>
      <label className="block text-sm font-medium text-gray-700 mb-1">{label}</label>
      
      <div className="flex items-center justify-between bg-gray-100 border border-dashed border-gray-300 rounded-lg px-4 py-3 hover:bg-gray-50 transition cursor-pointer">
        <span className="text-gray-600 text-sm truncate">
          {form[name]?.name || "لم يتم اختيار ملف بعد"}
        </span>
        <label className="bg-indigo-600 text-white px-3 py-1 rounded text-sm hover:bg-indigo-700 transition cursor-pointer">
          اختيار
          <input
            type="file"
            name={name}
            accept={accept}
            onChange={handleChange}
            className="hidden"
            required={required}
          />
        </label>
      </div>
    </div>
  ))}
</div>


          <div className="flex justify-between">
            <button type="button" onClick={() => setStep(1)} className="px-4 py-2 bg-gray-300 rounded hover:bg-gray-400">رجوع</button>
            <button type="submit" disabled={loading} className="px-4 py-2 bg-indigo-600 text-white rounded hover:bg-indigo-700">
              {loading ? 'جاري الإرسال...' : 'إرسال الطلب'}
            </button>
          </div>
        </>
      )}
    </form>
  );
}

export default InstituteDetail;