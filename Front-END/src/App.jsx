import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Universities from './pages/Universities';
import UniversityDetail from './pages/UniversityDetail';
import Institutes from './pages/Institutes';
import InstituteDetail from './pages/InstituteDetail';
import Navbar from './components/Navbar';
import Home from './pages/Home';

function App() {
  return (
    <Router>
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/universities" element={<Universities />} />
        <Route path="/universities/:id" element={<UniversityDetail />} />
        <Route path="/institutes" element={<Institutes />} />
        <Route path="/institutes/:id" element={<InstituteDetail />} />
      </Routes>
    </Router>
  );
}

export default App;