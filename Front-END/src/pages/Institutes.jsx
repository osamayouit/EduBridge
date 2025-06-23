import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { motion } from 'framer-motion';

function Institutes() {
  const [institutes, setInstitutes] = useState([]);

  useEffect(() => {
    fetch('http://192.168.0.43:8000/api/institutes/')
      .then(res => res.json())
      .then(data => setInstitutes(data.data));
  }, []);

  return (
    <div className="p-6 max-w-7xl mx-auto">
      {/* رسالة ترحيب مع أنيميشن دخول */}
      <motion.h1
        className="text-3xl font-bold mb-8 text-center text-indigo-700"
        initial={{ opacity: 0, y: -30 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.8 }}
      >
        هيا نستكشف المعاهد المميزة!
      </motion.h1>

      {/* قائمة المعاهد */}
      <motion.div
        className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-8"
        initial="hidden"
        animate="visible"
        variants={{
          hidden: { opacity: 0 },
          visible: { 
            opacity: 1,
            transition: { staggerChildren: 0.15 }
          },
        }}
      >
        {institutes.map((inst) => (
          <motion.div
            key={inst.id}
            className="relative group cursor-pointer rounded-xl border border-indigo-300 bg-gradient-to-br from-indigo-50 via-white to-indigo-50 shadow-lg overflow-hidden"
            whileHover={{ scale: 1.06, boxShadow: '0 12px 30px rgba(99, 102, 241, 0.6)' }}
            transition={{ type: 'spring', stiffness: 300 }}
          >
            <Link to={`/institutes/${inst.id}`} className="block relative z-10">
              <img
                src={inst.image_url || 'https://via.placeholder.com/400x200?text=No+Image'}
                alt={inst.name}
                className="w-full h-48 object-cover rounded-t-xl"
              />
              <div className="p-5">
                <h2 className="text-2xl font-bold text-indigo-900">{inst.name}</h2>
                {inst.description && (
                  <p
                    className="mt-3 text-gray-700 text-sm line-clamp-4"
                    dangerouslySetInnerHTML={{ __html: inst.description }}
                  />
                )}
              </div>
            </Link>

            {/* رسالة هيا نستكشف تظهر عند hover مع pointer-events-none لتسمح بالنقر */}
            <motion.div
              className="absolute inset-0 bg-indigo-800 bg-opacity-70 flex items-center justify-center rounded-xl text-white text-xl font-semibold opacity-0 group-hover:opacity-100 transition-opacity duration-300 pointer-events-none"
              initial={{ opacity: 0 }}
              animate={{ opacity: 0 }}
              whileHover={{ opacity: 1 }}
            >
              هيا نستكشف!
            </motion.div>
          </motion.div>
        ))}
      </motion.div>
    </div>
  );
}

export default Institutes;
