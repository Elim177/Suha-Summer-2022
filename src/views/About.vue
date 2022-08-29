<template>
    <div id="About">
        <hr>
        <h2>About the Project</h2>
        <p>Under the supervision of Professor Maleknaz Nayebi and the Faculty of Lassonde School of Engineering in the Department of EECS, Suha Siddiqui worked on a project titled "Customizing and Tailoring Machine Learning Documentation". Duties and Responsibilities consist of gathering data, pre-processing and mining the metadata, pre-processing and mining images, auto-captioning, and operating databases. </p>
        <br>
        <h2>Research Abstract</h2>
        <p>Readers’ expertise directly impacts their understanding of content, yet everyone receives the same manual for products. In software systems, APIs are the interfaces that offer services to other systems and can connect software systems together. With the adaptation of machine learning in recent years across different industries, many machine learning libraries are written and used by practitioners from different sectors to bring intelligence into their domain of practice. Yet, these documents are written by software professionals and are highly technical. Thus, there is an abundance of tutorials, courses, and educational resources and the Q/A platforms are full of redundant mistakes reported by the users. In this study, we focused on the popular ML library, TensorFlow, and aimed at answering the question “What model and tool can translate API documentation based on user expertise in Machine learning and software engineering?”. We first developed a method called “ELSU” to identify the expertise of the user and then curate the content to their expertise on multiple dimensions of the readability and content. ELSU uses Docstring (a descriptive string literal serving a similar purpose as a descriptive comment) to attain TensorFlow API descriptions. Then, a machine learning process is performed using the existing tutorials to train the model and predict the level of documentation customized and strung together with external resources. Eventually, the mechanism can be applied to various facets of software not exclusive to TensorFlow. Furthermore, the developed project can expand to other contexts to help develop resilient infrastructure and educational access (UN Sustainability Goal 9.5 and 4.6 respectively). The project exists on a website http://tf-doc.suhasiddiqui.net/.
</p>
        <p>Click on the image below to view more information about the project</p>
    </div>
    <a href="https://drive.google.com/file/d/1UDZnDi8tVUuEriIMMUpt2xAYeRnO1J9Z/view?usp=sharing" target="_blank"><img src = "@/assets/Slide1.png"></a>
    <br>
    <br>
    <br>
    <br>
    <h2>Recognition of the Project</h2>
    <p>The research project is presented at the Lassonde Undergraduate Research Conference. The Presentation won a title of "Best Presentation". Click on the image to learn more.</p>  
     <a href="https://www.linkedin.com/posts/lassonde-school-of-engineering-york-university_unsdgs-activity-6965746606558126080-v59b?utm_source=linkedin_share&utm_medium=member_desktop_web" target="_blank"><img src = "@/assets/award.jpg" style = "width:100%"></a>
</template>

<script lang="ts">
import {Options, Vue} from 'vue-class-component';
import Slide1 from '@/assets/Slide1.png';
import award from '@/assets/award.jpg';
console.log(Slide1);
console.log(award)
@Options({components: {}})
export default class About extends Vue
{
    
}
</script>

<style lang="sass" scoped>

#About
    div
        font-size: 0.8em
</style>

