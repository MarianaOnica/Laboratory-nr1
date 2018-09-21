# Laboratory-nr2
Topic: Creating and maintaining the database
SQL laboratories
<h2>Exercise 1.</h2>
       <p> I created a new database with necessary caracteristics and a new filegroup named "Univer" with some properties</>
       <h1> </h1>
       <img src = "first database.jpg"/>
<h2>Exercise 2.</h2>
       <p> I created an another database named Games.</p>
       <img src = "second database.jpg"/>
       <p> The long file name differs from the logical one defined in the physical schema.</P>
       <img src = "second database1.jpg"/>
       <p> The database is accessible for only one user</>
       <img src = "second database2.jpg"/>
<h2>Exercise 3.</h2>
       <p> I created the plan to maintain the first database named MentenancePlan_Universitatea1 </p>
       <img src = "mentenance.jpg"/>
       <p> This operation runs every Friday at 00:00 </p>
       <img src = "mentenance1.jpg"/>
       <p> Unused space from database files is removed when reaching the limit of 2000Mb </p>
       <img src = "mentenance2.jpg"/>
       <p> Check the results in the <I>log</I> file</p>
       <img src = "mentenance3.jpg"/>
<h2>Exercise 4.</h2>
       <p> I created the Mentenance Plan for my second database named Games which include :</p>
       <ul> <li>The system performs rebuilding of indexes only on the base tables
            <li>The free space on the page is 10% 
            <li>Indexes sorting is done in <I>tempdb</I> 
            <li>After rebuilding, there is a collection of complete statistics about reconstructed indexes
            <li>Delete history older than 6 weeks for Backup restore operations
            <li>The plan runs every first Sunday of the month
      </ul>
      <div class="row">
              <div class="column">
              <img src="intretinere.jpg" style="width:50%">
              </div>
              <div class="column">
              <img src="intretinere1.jpg"  style="width:50%">
              </div>
      </div>
      <p> Check the results in the <I>log</I> file</p>
       <div class="row">
              <div class="column">
              <img src="intretinere2.jpg" style="width:50%">
              </div>
              <div class="column">
              <img src="intretinere3.jpg"  style="width:50%">
              </div>
      </div>

