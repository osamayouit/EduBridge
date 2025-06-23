import { motion } from 'framer-motion';
import { Link } from 'react-router-dom';

function Home() {
  return (
    <div className="min-h-screen bg-gradient-to-br from-white via-slate-100 to-gray-200 p-6">
      <motion.div 
        className="text-center"
        initial={{ opacity: 0, y: -50 }} 
        animate={{ opacity: 1, y: 0 }} 
        transition={{ duration: 0.8 }}
      >
        <h1 className="text-4xl font-bold text-indigo-700 mb-4">مرحبًا بك في منصتنا التعليمية</h1>
        <p className="text-gray-700 text-lg max-w-xl mx-auto mb-8">
          نحن نوفر لك قاعدة بيانات ضخمة لأفضل الجامعات والمعاهد، مع تفاصيل دقيقة وخدمات تساعدك على اتخاذ القرار الأفضل.
        </p>
        <div className="flex justify-center gap-4">
          <Link to="/universities" className="bg-indigo-600 text-white px-6 py-2 rounded-lg hover:bg-indigo-700 transition">تصفح الجامعات</Link>
          <Link to="/institutes" className="bg-white border border-indigo-600 text-indigo-600 px-6 py-2 rounded-lg hover:bg-indigo-100 transition">تصفح المعاهد</Link>
        </div>
      </motion.div>

      <motion.div 
        className="mt-16 grid grid-cols-1 md:grid-cols-3 gap-6"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ delay: 0.5, duration: 1 }}
      >
        <div className="p-6 bg-white rounded-xl shadow-lg hover:shadow-xl transition">
          <h3 className="text-xl font-semibold text-indigo-700 mb-2">قاعدة بيانات متكاملة</h3>
          <p className="text-gray-600">كل الجامعات والمعاهد في مكان واحد مع معلومات محدثة باستمرار.</p>
        </div>
        <div className="p-6 bg-white rounded-xl shadow-lg hover:shadow-xl transition">
          <h3 className="text-xl font-semibold text-indigo-700 mb-2">سهولة الوصول</h3>
          <p className="text-gray-600">نظام تصفح سريع وسهل باستخدام React وTailwind.</p>
        </div>
        <div className="p-6 bg-white rounded-xl shadow-lg hover:shadow-xl transition">
          <h3 className="text-xl font-semibold text-indigo-700 mb-2">دعم واهتمام</h3>
          <p className="text-gray-600">نحن نهتم بتوفير تجربة سلسة ومميزة للطلاب والباحثين عن مستقبلهم.</p>
        </div>
      </motion.div>
    </div>
  );
}

export default Home;
