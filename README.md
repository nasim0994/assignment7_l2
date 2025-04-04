<!-- ?Question 1 -->

## 1. What is PostgreSQL?

ans: PostgreSQL হল একটি শক্তিশালী, ওপেন-সোর্স রিলেশনাল ডেটাবেস ম্যানেজমেন্ট সিস্টেম। এটি ডেটা সংরক্ষণ এবং পরিচালনা করার জন্য ব্যবহৃত হয় এবং SQL ব্যবহার করে ডেটার সঙ্গে যোগাযোগ করা হয়।

<!-- ?Question 2 -->

## 2. What is the purpose of a database schema in PostgreSQL?

ans: PostgreSQL-এ ডেটাবেস স্কিমা হল একটি কাঠামো, যা ডেটাবেসের মধ্যে টেবিল, ভিউ, ইনডেক্স, ফাংশন ইত্যাদি সংগঠিত এবং ভাগ করে রাখতে সাহায্য করে। এটি ডেটাবেসের অবজেক্টগুলোকে একটি গুচ্ছ হিসেবে সাজিয়ে রাখে যাতে করে কাজ করা সহজ হয়।

<!-- ?Question 3 -->

## 3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.

ans: 
  Primary Key: Primary Key হল একটি টেবিলের এমন একটি কলাম বা কলামের সংমিশ্রণ, যা প্রতিটি রেকর্ডকে অনন্যভাবে চিহ্নিত করে। এটি NULL হতে পারে না এবং এর মান পুনরাবৃত্তি হতে পারে না। অর্থাৎ, প্রতিটি রেকর্ডের জন্য এটি ইউনিক।  
  Foreign Key: Foreign Key হল একটি কলাম যা অন্য একটি টেবিলের Primary Key বা ইউনিক কীকে রেফারেন্স করে। এটি টেবিলগুলোর মধ্যে সম্পর্ক স্থাপন করতে সহায়ক। Foreign Key ব্যবহার করে আমরা নিশ্চিত করতে পারি যে, একটি টেবিলের ডেটা অন্য টেবিলের ডেটার সাথে সঠিকভাবে সংযুক্ত আছে।

<!-- ?Question 4 -->

## 4. What is the difference between the VARCHAR and CHAR data types?

ans: VARCHAR এটি স্ট্রিংয়ের দৈর্ঘ্য অনুসারে জায়গা নেয়। স্ট্রিং যত ছোট, জায়গা তত কম লাগে। CHAR এটি সবসময় নির্দিষ্ট জায়গা নেয়, এমনকি স্ট্রিং ছোট হলেও।

<!-- ?Question 5 -->

## 5. Explain the purpose of the WHERE clause in a SELECT statement.

ans: WHERE ক্লজের উদ্দেশ্য হলো SELECT স্টেটমেন্টের মাধ্যমে ডেটাবেস থেকে বিশেষ শর্ত পূরণ করা রেকর্ডগুলোকে ফিল্টার করা। এটি ব্যবহৃত হয় ডেটা কুয়েরি করার সময়, শুধুমাত্র সেই রেকর্ডগুলো নির্বাচন করতে যা নির্দিষ্ট শর্ত পূরণ করে।

<!-- ?Question 6 -->

## 6. What are the LIMIT and OFFSET clauses used for?

ans: 
  LIMIT ক্লজটি ব্যবহৃত হয় কুয়েরি থেকে নির্দিষ্ট সংখ্যক রেকর্ড ফেরত দেওয়ার জন্য।
  OFFSET ক্লজটি ব্যবহার হয় ডেটার মধ্যে থেকে একটি নির্দিষ্ট অবস্থান থেকে রেকর্ড নির্বাচন করার জন্য। অর্থাৎ, এটি বলে দেয় আপনি কুয়েরির ফলাফল কোথা থেকে শুরু করবেন।

<!-- ?Question 7 -->

## 7. How can you modify data using UPDATE statements?

ans: UPDATE স্টেটমেন্ট মূলত ডেটা পরিবর্তন করার জন্য ব্যবহৃত হয়। এর মাধ্যমে একটি টেবিলের বিভিন্ন রেকর্ডের মান পরিবর্তন করা যায়।

<!-- ?Question 8 -->

## 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?

ans: JOIN অপারেশন PostgreSQL-এ দুটি বা তার বেশি টেবিলের মধ্যে সম্পর্ক স্থাপন করতে ব্যবহৃত হয়, এবং এটি একসাথে ডেটা ফেচ করার জন্য অত্যন্ত গুরুত্বপূর্ণ। এর মাধ্যমে বিভিন্ন টেবিলের মধ্যে সম্পর্কিত ডেটা একসাথে দেখা যায় |

<!-- ?Question 9 -->

## 9. Explain the GROUP BY clause and its role in aggregation operations.

ans: GROUP BY ক্লজ PostgreSQL বা অন্য যেকোনো SQL ডেটাবেসে ব্যবহার করা হয় ডেটাকে গ্রুপ করার জন্য, বিশেষ করে যখন আমরা এগ্রিগেট ফাংশন (যেমন COUNT, SUM, AVG, MIN, MAX) ব্যবহার করতে চাই। এটি ডেটাকে নির্দিষ্ট একটি বা একাধিক কলামের ভিত্তিতে গ্রুপ করে এবং সেই গ্রুপগুলোর ওপর কাজ করা সম্ভব করে।

<!-- ?Question 10 -->

## 10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?

ans: PostgreSQL-এ COUNT(), SUM(), এবং AVG() ফাংশনগুলো ডেটার ওপর গাণিতিক হিসাব করতে ব্যবহৃত হয়। এগুলো সাধারণত GROUP BY ক্লজের সাথে ব্যবহার করা হয়, যাতে প্রতিটি গ্রুপের জন্য হিসাব করা যায়।
