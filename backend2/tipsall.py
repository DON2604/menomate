import ast
import json

def convert_to_python_dict(dictionary_str):
    # Use Python's Abstract Syntax Trees (AST) to safely evaluate the string as a dictionary
    python_dict = ast.literal_eval(dictionary_str)
    return python_dict


# Example Flutter-style dictionary as a string
flutter_dict_str = '''{
    'Stay hydrated and rest': [
      {
        'tip': 'Drink plenty of water throughout the day',
        'image':
            'https://health.ucdavis.edu/media-resources/contenthub/post/internet/good-food/2022/07/images-social/drinking-water.jpg',
        'video': 'https://www.youtube.com/watch?v=9iMGFqMmUFs',
      },
      {
        'tip': 'Get adequate sleep each night',
        'image':
            'https://www.sleepfoundation.org/wp-content/uploads/2022/04/Eight-Health-Benefits-of-Sleep.jpg',
        'video': 'https://youtu.be/zn2oVF8r-fE?si=wAOoGHG4xRMYQX-Z',
      },
      {
        'tip': 'Take short naps when feeling fatigued',
        'image':
            'https://static.scientificamerican.com/sciam/cache/file/579C540C-3B73-46C5-9CBE94EF48158E82_source.jpg?w=1200',
        'video': 'https://youtu.be/uEHu8LIZUKI?si=ChmbQPziTrAm4wmb',
      },
      {
        'tip': 'Avoid caffeine and alcohol',
        'image':
            'https://www.shutterstock.com/image-vector/stop-drinking-tea-coffee-concept-600nw-2060529872.jpg',
        'video': 'https://youtu.be/ijpuuykrtys?si=NpHt76tgQFJhHzIw',
      },
      {
        'tip': 'Use a humidifier to maintain moisture in the air',
        'image':
            'https://www.onegreenplanet.org/wp-content/uploads/2022/04/shutterstock_1800271858-scaled-e1651506406589.jpg',
        'video': 'https://youtu.be/I1YppupsNOU?si=MhDDAWHm3aYENRdm',
      },
      {
        'tip': 'Consume water-rich fruits and vegetables',
        'image':
            'https://images-prod.healthline.com/hlcmsresource/images/smiling-woman-holding-watermelon-in-each-hand.jpg',
        'video': 'https://youtu.be/FPwe7LqSUio?si=X9VcaHp_opkWLRUw',
      },
    ],
    'Take iron supplements': [
      {
        'tip': 'Eat iron-rich foods like spinach and lean meats',
        'image':
            'https://www.eurokidsindia.com/blog/wp-content/uploads/2023/09/Iron-Rich.jpg',
        'video': 'https://youtu.be/Up5bJxJ4Zu0?si=zXaaqYbdYom-aQof',
      },
      {
        'tip': 'Pair iron-rich foods with vitamin C for better absorption',
        'image':
            'https://images.onlymyhealth.com/imported/images/2024/July/24_Jul_2024/Main_anaemia.jpg',
        'video': 'https://youtu.be/xJqhAAeuOrA?si=2JdC4veIfvFPxAPj',
      },
      {
        'tip': 'Cook in cast iron cookware',
        'image':
            'https://stahlkitchens.com/cdn/shop/articles/Blacksmith_plus_2_1412x.jpg?v=1715008650',
        'video': 'https://youtu.be/KLGSLCaksdY?si=JV41pRFkANjhVMqU',
      },
      {
        'tip': 'Try liquid iron supplements for better absorption',
        'image':
            'https://www.wikihow.com/images/thumb/c/c9/Take-Iron-Supplements-Step-2-Version-2.jpg/v4-460px-Take-Iron-Supplements-Step-2-Version-2.jpg.webp',
        'video': 'https://youtu.be/k9UwODOO6Ho?si=GCM3h4hG_xg4I_Ig',
      },
      {
        'tip': 'Consult a doctor about prescription iron supplements',
        'image':
            'https://www.shutterstock.com/image-photo/happy-doctor-showing-vitamins-smiling-600nw-2189534237.jpg',
        'video': 'https://youtu.be/JR9L3JB2HoU?si=WG501GlkUG14dRXO',
      },
      {
        'tip': 'Include iron-fortified cereals in your diet',
        'image':
            'https://media.post.rvohealth.io/wp-content/uploads/2020/08/cereal_spinach-732x549-thumbnail.jpg',
        'video': 'https://youtu.be/F_3h1imORL8?si=XOADY28r57sh5XLN',
      }
    ],
    'Practice gentle exercise': [
      {
        'tip': 'Take a leisurely walk',
        'image':
            'https://www.realsimple.com/thmb/5KCqNA1wP_Smd5ONXNRBWESPCg8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/health-benefits-walking-ba202112144d4c928e6b380a2d0a3d19.jpg',
        'video': 'https://youtu.be/AdSQaIh94ME?si=FyvX6rjwz_DM3Urc',
      },
      {
        'tip': 'Do light stretching or yoga',
        'image':
            'https://static.vecteezy.com/system/resources/previews/035/853/155/large_2x/yoga-concept-sporty-woman-stretching-on-mat-over-light-windows-doing-asana-midnful-training-photo.jpg',
        'video': 'https://youtu.be/sTANio_2E0Q?si=ubscQK0zWuRLLF0o',
      },
      {
        'tip': 'Try swimming or water aerobics',
        'image':
            'https://media.istockphoto.com/id/155430528/photo/water-aerobics-group.jpg?s=612x612&w=0&k=20&c=zHa7Q87dUD46zye5Muw2OzDa5VrQG-wc1KexjU4IiSc=',
        'video': 'https://youtu.be/2HlO4lVi0fQ?si=MHxCrfXmp2r0jRwQ',
      },
      {
        'tip': 'Practice tai chi',
        'image':
            'https://media.istockphoto.com/id/1443608249/photo/woman-doing-tai-chi.jpg?s=612x612&w=0&k=20&c=QlkacU6mhLmdYQ_rHmomIlrAO3_NsjKU4RrOjGGDRvM=',
        'video': 'https://youtu.be/Q6aZ-VQWWFM?si=XemsmZyQkLZxmP_O',
      },
      {
        'tip': 'Engage in slow cycling',
        'image':
            'https://www.shutterstock.com/image-photo/two-fit-cyclists-race-against-600nw-403955929.jpg',
        'video': 'https://youtu.be/RUXUcL3vf8w?si=OctKJ7VntRLsJYfd',
      },
      {
        'tip': 'Do low-impact dance routines',
        'image':
            'https://hipshakefitness.gmkennedy.com/wp-content/uploads/2018/05/Barre-Workout-Ab.jpg',
        'video': 'https://youtu.be/3LpJSXiI3iA?si=bVCXYP5DUFI2o1H2',
      }
    ],
    'Focus on high-protein foods': [
      {
        'tip': 'Incorporate lean meats into your meals',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdgMO3O9AZf0aOTwTo0UN9cMakmHY6rPYz-Q&s',
        'video': 'https://www.youtube.com/watch?v=hNbtC472c0A',
      },
      {
        'tip': 'Eat more eggs and dairy products',
        'image':
            'https://www.healthxchange.sg/sites/hexassets/Assets/food-nutrition/Eggs-and-milk-are-they-healthy.jpg',
        'video': 'https://www.youtube.com/watch?v=j8qlrFrvpvE',
      },
      {
        'tip': 'Try plant-based proteins like beans and lentils',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbEkUsdVJE7jS4dbA42cBfkDh7gGUxZT0SFQ&s',
        'video': 'https://www.youtube.com/watch?v=tYMVDxI8WP4',
      },
      {
        'tip': 'Snack on nuts and seeds',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBWVHqd1HTg8jK9uOWfjG31yznVp86dugIeQ&s',
        'video': 'https://www.youtube.com/watch?v=6pHzErs4rU4',
      },
      {
        'tip': 'Include quinoa in your diet',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLPm5wOsrddAHEpISXYhBkxRc5DnW6SGef5A&s',
        'video': 'https://www.youtube.com/watch?v=w798qKzR2sA',
      },
      {
        'tip': 'Consume protein smoothies',
        'image': 'Consume protein smoothies',
        'video': 'https://www.youtube.com/watch?v=F3KMMtA0rB0',
      }
    ],
    'Engage in high-intensity workouts': [
      {
        'tip': 'Try HIIT (High-Intensity Interval Training)',
        'image':
            'https://images.squarespace-cdn.com/content/v1/5a3ed64f4c326d77c53e744a/1528037359943-JA4KLZWJKMP4PKYN38C5/HIIT.jpg',
        'video': 'https://www.youtube.com/watch?v=jWCm9piAwAU',
      },
      {
        'tip': 'Do plyometric exercises',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7Zw-UU6xnNNxgdhOfO2cfarQnQR1UdY8uXA&s',
        'video': 'https://www.youtube.com/watch?v=b3O-R1biZu0',
      },
      {
        'tip': 'Participate in kickboxing classes',
        'image':
            'https://media.self.com/photos/61d61293549225ac6a63755f/4:3/w_2560%2Cc_limit/211109_SELF_087.jpg',
        'video': 'https://youtu.be/oMXHBcI1wJU?si=nupPbvsNU-gIKASe',
      },
      {
        'tip': 'Try sprint intervals',
        'image':
            'https://i0.wp.com/post.healthline.com/wp-content/uploads/2022/03/female-sprint-running-1296-728-header.jpg?w=1155&h=1528',
        'video': 'https://www.youtube.com/watch?v=Q_uzQrcctd4',
      },
      {
        'tip': 'Do circuit training',
        'image':
            'https://res.cloudinary.com/hydrow/image/upload/f_auto/w_2000/q_80/v1715266771/Blog/best-circuit-training-workouts.jpg',
        'video': 'https://www.youtube.com/watch?v=kTJ5b0RkKX8',
      },
      {
        'tip': 'Engage in CrossFit-style workouts',
        'image':
            'https://hips.hearstapps.com/hmg-prod/images/crossfit-workouts-65b8fb143ed9b.jpg',
        'video': 'https://www.youtube.com/watch?v=jV3uh3gIfJ4',
      }
    ],
    'Monitor fertility signs': [
      {
        'tip': 'Track cervical mucus changes',
        'image':
            'https://mindandmom.com/wp-content/uploads/2024/04/Decoding-Discharge-Understanding-Cervical-Mucus-and-Fertility-1-1-1024x768.jpg',
        'video': 'https://youtu.be/XCi0KHkfN2g?si=yJq6BU1Ag8n686zR',
      },
      {
        'tip': 'Use ovulation prediction kits',
        'image':
            'https://www.parents.com/thmb/wFc8yqaVhoodbHGiELCTy0QuEW8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/shutterstock_547466077-b2c39d0bfbbd4c30950f2fa1cc83fec5.jpg',
        'video': 'https://youtu.be/7Li4XLKEu1g?si=EkRBB_u47xpoOI_t',
      },
      {
        'tip': 'Chart basal body temperature',
        'image':
            'https://www.shutterstock.com/image-vector/bbt-chart-basal-body-day-600nw-1813986788.jpg',
        'video': 'https://youtu.be/iQi-CUF82_Y?si=CvuxvHnSJ1Pyh300',
      },
      {
        'tip': 'Observe changes in cervical position',
        'image':
            'https://cdn2.momjunction.com/wp-content/uploads/2019/03/Cervical-Position-In-Early-Pregnancy.jpg.webp',
        'video': 'https://youtu.be/OHipSIBCUhI?si=gJE9n1ceTF2TO5GK',
      },
      {
        'tip': 'Note breast tenderness or swelling',
        'image':
            'https://www.shutterstock.com/image-vector/woman-holding-her-chest-girl-600nw-1829390546.jpg',
        'video': 'https://youtu.be/opVic1ubxu4?si=eTg-rQh7n6V9MRpk',
      },
      {
        'tip': 'Use fertility tracking apps',
        'image':
            'https://platform.vox.com/wp-content/uploads/sites/2/chorus/uploads/chorus_asset/file/13433005/Lead_2Flowers.jpg?quality=90&strip=all&crop=0,0,100,100',
        'video': 'https://youtu.be/WOi2Bwvp6hw?si=Po_3n6CbMjcxVqjv',
      }
    ],
    'Practice stress-reduction techniques': [
      {
        'tip': 'Try guided meditation',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvvdN2AeU8LBFsuyCezE8lwf44_IKGzqSKeg&s',
        'video': 'https://www.youtube.com/watch?v=U9YKY7fdwyg',
      },
      {
        'tip': 'Practice deep breathing exercises',
        'image':
            'https://assets.clevelandclinic.org/transform/3b0116b6-e434-49dd-8cbb-557db231b8ad/4-7-8-breathing-1388104915-770x533-1_jpg',
        'video': 'https://www.youtube.com/watch?v=acUZdGd_3Dg',
      },
      {
        'tip': 'Engage in progressive muscle relaxation',
        'image':
            'https://images.squarespace-cdn.com/content/v1/656f4e4dababbd7c042c4946/5c2c7f85-cce7-4531-aa3c-4d7a8b364e6a/progressive+muscle-relaxation-3x2+%281%29.jpg',
        'video': 'https://www.youtube.com/watch?v=ClqPtWzozXs',
      },
      {
        'tip': 'Try aromatherapy',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4Q7m2ZQ6YPCCvnoHulUI8b74suQoTGJfZtQ&s',
        'video': 'https://www.youtube.com/watch?v=DvJYg0yw358',
      },
      {
        'tip': 'Listen to calming music',
        'image':
            'https://www.drweil.com/wp-content/uploads/2016/12/health-wellness_balanced-living_healthy-home_music-to-soothe-and-relax_2716x1810_000077028605.jpg',
        'video': 'https://www.youtube.com/watch?v=lFcSrYw-ARY',
      },
      {
        'tip': 'Practice mindfulness throughout the day',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4OJCt_rjyQSCIviHXC8RU1bbhzBXKCEwqzw&s',
        'video': 'https://www.youtube.com/watch?v=cMwSxrkSX3E',
      }
    ],
    'Increase calcium intake': [
      {
        'tip': 'Consume more dairy products',
        'image':
            'https://media.istockphoto.com/id/544807136/photo/various-fresh-dairy-products.jpg?s=612x612&w=0&k=20&c=U5T70bi24itoTDive1CVonJbJ97ChyL2Pz1I2kOoSRo=',
        'video': 'https://youtu.be/K5PbJgPHZcI?si=_k7F5jZ0w2Vy84Rt',
      },
      {
        'tip': 'Eat calcium-rich leafy greens',
        'image':
            'https://i0.wp.com/curejoy.com/wp-content/uploads/2018/03/CALCIUM-RICH-VEGETABLES.jpg?fit=1200%2C627&ssl=1',
        'video': 'https://youtu.be/OF7UT5Hy1xw?si=HNVuxd4OEgwCJHox',
      },
      {
        'tip': 'Try calcium-fortified foods',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7S-6O3Ox3byKZ4d6W-UKL8atMYwwZ9GcjaQ&s',
        'video': 'https://youtu.be/AbNwn34ZZng?si=5FlqauM-kRrf6gAt',
      },
      {
        'tip': 'Snack on almonds and other nuts',
        'image':
            'https://img.freepik.com/free-photo/flat-lay-almonds-with-peanuts_23-2148452929.jpg',
        'video': 'https://youtu.be/JNJh5ixAHQY?si=-9CUcTiSOMGWXNaN',
      },
      {
        'tip': 'Eat more sardines or canned salmon with bones',
        'image':
            'https://media-cldnry.s-nbcnews.com/image/upload/newscms/2020_18/1564934/tinned-fish-today-main1-200501.jpg',
        'video': 'https://youtu.be/IiAJ8bfNWas?si=wFi21g34mSb4s6SX',
      },
      {
        'tip': 'Consider calcium supplements (consult a doctor)',
        'image':
            'https://media.post.rvohealth.io/wp-content/uploads/2020/09/Calcium_Supplements_Should_You_Take_Them-732x549-Thumbnail.jpg',
        'video': 'https://youtu.be/HP0UPkMF1gA?si=YH5ovPRcaVfIdQVy',
      }
    ],
    'Prepare for upcoming menstruation': [
      {
        'tip': 'Stock up on menstrual products',
        'image':
            'https://img.freepik.com/premium-vector/menstrual-period-sanitary-goods-feminine-hygiene-cycle-products-cartoon-flat-style-period-care-concept-with-pads-tampons-vector-set-hygiene-menstruation-illustration_102902-8162.jpg',
        'video': 'https://youtu.be/s9jjYIAGQ0s?si=S4mVVQ-i29A33LBc',
      },
      {
        'tip': 'Wear comfortable clothing',
        'image':
            'https://thumbs.dreamstime.com/b/woman-comfy-home-clothes-eye-patches-girl-cozy-nightwear-towel-her-head-cartoon-vector-illustration-isolated-white-276041707.jpg',
        'video': 'https://youtu.be/FsLycwUEBX0?si=nLPCy1Nco9FC3EyB',
      },
      {
        'tip': 'Keep pain relief medication on hand',
        'image':
            'https://www.shutterstock.com/image-vector/hand-woman-holding-medical-pills-600nw-2144200143.jpg',
        'video': 'https://youtu.be/4yP-UQJ3koY?si=09tKfqeA5jFc5K3m',
      },
      {
        'tip': 'Prepare a hot water bottle or heating pad',
        'image':
            'https://thumbs.dreamstime.com/b/rubber-heating-pad-used-painful-menstruation-menstrual-period-vector-illustration-rubber-heating-pad-used-painful-330795742.jpg',
        'video': 'https://youtu.be/uNGEDvIzIBI?si=Y13N7dbUqeX8romk',
      },
      {
        'tip': 'Plan restful activities',
        'image':
            'https://static.vecteezy.com/system/resources/previews/024/485/611/original/self-care-women-leisure-time-relaxing-bath-skin-care-hobbies-reading-a-book-time-for-yourself-daily-routine-flat-cartoon-illustration-vector.jpg',
        'video': 'https://youtu.be/B5WDSBW8w-A?si=EUtcHJTOjwnvtbxz',
      },
      {
        'tip': 'Inform close friends or family for support',
        'image':
            'https://static.vecteezy.com/system/resources/previews/005/006/765/original/family-time-of-joyful-parents-and-children-spending-time-together-at-home-doing-various-relaxing-activities-in-cartoon-flat-illustration-for-poster-or-background-vector.jpg',
        'video': 'https://youtu.be/AbNwn34ZZng?si=5FlqauM-kRrf6gAt',
      }
    ],
    'Use heat therapy for cramps': [
      {
        'tip': 'Apply a heating pad to the lower abdomen',
        'image':
            'https://thumbs.dreamstime.com/b/rubber-heating-pad-used-painful-menstruation-menstrual-period-vector-illustration-rubber-heating-pad-used-painful-330795742.jpg',
        'video': 'https://youtu.be/uNGEDvIzIBI?si=Y13N7dbUqeX8romk',
      },
      {
        'tip': 'Take warm baths',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2TfU_EZA3XAuZoiT167cdJJX5pZPkjfKvjA&s',
        'video': 'https://www.youtube.com/watch?v=fUTvtP0Uho4',
      },
      {
        'tip': 'Use adhesive heat patches',
        'image':
            'https://image.made-in-china.com/202f0j00wkMbaZSoPmcq/Disposable-Belly-Wrap-Adhesive-Heat-Pad-Warm-Patch-Heating-Pad-for-Waist-Back-Pain.webp',
        'video': 'https://www.youtube.com/watch?v=C--S1KktvF4',
      },
      {
        'tip': 'Try warm compresses',
        'image':
            'https://www.wikihow.com/images/thumb/9/91/Make-a-Warm-Compress-Step-10.jpg/v4-460px-Make-a-Warm-Compress-Step-10.jpg.webp',
        'video': 'https://www.youtube.com/watch?v=OJHvyDkvvvs',
      },
      {
        'tip': 'Drink warm herbal teas',
        'image':
            'https://teapro.co.uk/wp-content/uploads/2023/09/lemon-balm-taste-notes.jpg',
        'video': 'https://youtu.be/t9vwqEmbP8A?si=c_4q8LDYDcbnjW_X',
      },
      {
        'tip': 'Use a microwaveable heat wrap',
        'image': 'https://m.media-amazon.com/images/I/61TKvmGlynL.jpg',
        'video': 'https://youtu.be/r-AJ4lnFX2o?si=9nXfvCDnhUanuUxf',
      }
    ],
    'Try journaling for emotional balance': [
      {
        'tip': 'Write daily gratitude lists',
        'image':
            'https://media.istockphoto.com/id/1461537129/photo/close-up-woman-hand-writing-on-notebook.jpg?s=612x612&w=0&k=20&c=1UPcoOpmYSCzeHAyOB92X4tgSIybR6p7m-yUqIjAlaA=',
        'video': 'https://youtu.be/IrF6m0hCvQE?si=8VADqFBPVbmEHhTE',
      },
      {
        'tip': 'Use prompts for self-reflection',
        'image':
            'https://careclinic.io/wp-content/uploads/2023/12/reflection-journal-prompts-jpg.webp',
        'video': 'https://youtu.be/4aPEJBRA8AA?si=O-jM1YrunZeJYE6l',
      },
      {
        'tip': 'Practice stream-of-consciousness writing',
        'image':
            'https://www.silkandsonder.com/cdn/shop/articles/iStock-1194294191.jpg?v=1607029885&width=1100',
        'video': 'https://youtu.be/sUULxz12EKQ?si=605WeizdSwKtT_Ij',
      },
      {
        'tip': 'Keep a mood tracker',
        'image':
            'https://static.vecteezy.com/system/resources/previews/023/325/980/original/emotions-scale-on-smartphone-screen-mood-concept-tiny-girl-leave-feedback-online-emoji-set-for-mood-tracker-excellent-good-and-normal-bad-and-awful-modern-flat-cartoon-style-illustration-vector.jpg',
        'video': 'https://youtu.be/TA4-qQ5wEns?si=Opi8LmsZ2EV2_qpB',
      },
      {
        'tip': 'Write letters to yourself',
        'image':
            'https://as2.ftcdn.net/v2/jpg/02/86/09/19/1000_F_286091980_SyXKs4MDFu7VOYgXVsFdNsmC6B46EFhW.jpg',
        'video': 'https://youtu.be/1ns_QmvDbaE?si=nDIPOXPOK6BCeGVt',
      },
      {
        'tip': 'Use art journaling for creative expression',
        'image':
            'https://dayoneapp.com/wp-content/uploads/2023/07/gratitude-art-journal.jpg',
        'video': 'https://youtu.be/rxTmaCAKKWk?si=8xQFZWbiaTYPn4M_',
      }
    ],
    'Practice breathing exercises before bed': [
      {
        'tip': 'Try 4-7-8 breathing technique',
        'image':
            'https://www.health.com/thmb/wTWrZGNQZpOQ-OXdK_RaP_9QTEc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/478-breathing-GettyImages-1340439366-2000-be2f64fbe4bc4c65afc9350a30fb1103.jpg',
        'video': 'https://youtu.be/1Dv-ldGLnIY?si=pjvoQTfcdFe9gbqB',
      },
      {
        'tip': 'Practice diaphragmatic breathing',
        'image':
            'https://d3b6u46udi9ohd.cloudfront.net/wp-content/uploads/2023/03/28095319/Abdominal-Breathing.jpg',
        'video': 'https://youtu.be/BCF5Jl4y1yU?si=Z-b_6aomq0A8tEjq',
      },
      {
        'tip': 'Use guided breathing apps',
        'image':
            'https://image-us.samsung.com/SamsungUS/support/solutions/mobile/phones/galaxy-s/s21/PH_GS_S21_Use-mindfulness-apps-on-your-Galaxy-Phone.png',
        'video': 'https://youtu.be/iaQed_Xdyvw?si=H1l90M2suDoMKU1-',
      },
      {
        'tip': 'Try alternate nostril breathing',
        'image':
            'https://talkingtherapies.berkshirehealthcare.nhs.uk/media/110205100/deep-breathing.jpg?anchor=center&mode=crop&width=0&height=0&rnd=133579195260000000',
        'video': 'https://youtu.be/G8xIEzX40bA?si=VilVYPCKVK-eYINk',
      },
      {
        'tip': 'Practice box breathing',
        'image':
            'https://cdn.prod.website-files.com/61384703bca2db472ca04cfa/6464a15492002af7d8586f68_yogaBreathing-1258979897-770x533-1-650x428.jpg',
        'video': 'https://youtu.be/ZfMA0YA1IVA?si=7NCLT6nXN9zuH12s',
      },
      {
        'tip': 'Use visualized breath counting',
        'image':
            'https://images.everydayhealth.com/images/healthy-living/alternative-health/meditation-breathing-techniques-722x406.jpg',
        'video': 'https://youtu.be/bF_1ZiFta-E?si=lKfVTbDzF-eH86U-',
      }
    ],
    'Drink herbal teas for relaxation': [
      {
        'tip': 'Try chamomile tea',
        'image':
            'https://www.shutterstock.com/image-photo/girl-holds-cup-tea-chamomile-600nw-2248059075.jpg',
        'video': 'https://youtu.be/mWYBDFW79SE?si=hzJucunwq543J6b3',
      },
      {
        'tip': 'Drink peppermint tea',
        'image':
            'https://media.istockphoto.com/id/1418206475/photo/green-tea-with-mint-in-a-transparent-bowl-healthy-food-antioxidants.jpg?s=612x612&w=0&k=20&c=tmBPACE-5QQ-0DE9aaBoAU3q9XpdbNRhLBI_B7TnnFA=',
        'video': 'https://youtu.be/UodCc8j1VVg?si=FJJmVA-JaUUNMnCu',
      },
      {
        'tip': 'Use lavender tea',
        'image':
            'https://t4.ftcdn.net/jpg/06/45/62/13/360_F_645621385_hh55cYItctCkWwEOSJykNJjKlg9IGtSP.jpg',
        'video': 'https://youtu.be/KQPHRUuS2IQ?si=zhnl7DIK5rjVnpgF',
      },
      {
        'tip': 'Try passionflower tea',
        'image':
            'https://media.istockphoto.com/id/1437562587/photo/calming-herbal-tea-with-the-leaves-of-the-passion-flower.jpg?s=612x612&w=0&k=20&c=C2OQxovoS6e2KMNr6ZZoHe_gnBbNRmiJTccG0DU6BQ0=',
        'video': 'https://youtu.be/EVW175IikYU?si=ez8pIBRFr4NGoCZX',
      },
      {
        'tip': 'Drink valerian root tea',
        'image':
            'https://thumbs.dreamstime.com/b/valerian-tea-still-life-freshly-prepared-31631460.jpg',
        'video': 'https://youtu.be/ecbEp6rk5I8?si=BPycfwjR2QMOuJEy',
      },
      {
        'tip': 'Use lemon balm tea',
        'image':
            'https://teapro.co.uk/wp-content/uploads/2023/09/lemon-balm-taste-notes.jpg',
        'video': 'https://youtu.be/t9vwqEmbP8A?si=c_4q8LDYDcbnjW_X',
      }
    ],
    'Add more fiber to your diet': [
      {
        'tip': 'Eat more whole grains',
        'image':
            'https://www.shutterstock.com/image-photo/display-whole-grains-grain-products-260nw-702348295.jpg',
        'video': 'https://youtu.be/3h9hzVwP6TA?si=FwTCvREZcoJBBCEP',
      },
      {
        'tip': 'Incorporate beans and lentils',
        'image':
            'https://www.shutterstock.com/image-photo/legumes-beans-sprouts-dried-raw-600nw-2210141629.jpg',
        'video': 'https://youtu.be/3vwdb8jwnls?si=RRz5j4l5y1VciopO',
      },
      {
        'tip': 'Snack on fresh fruits',
        'image':
            'https://images.onlymyhealth.com/imported/images/2024/July/24_Jul_2024/Main_anaemia.jpg',
        'video': 'https://youtu.be/xJqhAAeuOrA?si=2JdC4veIfvFPxAPj',
      },
      {
        'tip': 'Eat more vegetables, especially leafy greens',
        'image':
            'https://wellbeingnutrition.com/cdn/shop/articles/blog-2_1.jpg?v=1678290040',
        'video': 'https://youtu.be/P24YT9bqGcs?si=DvFGZalqPszgORl4',
      },
      {
        'tip': 'Try chia seeds or flaxseeds',
        'image':
            'https://images.healthshots.com/healthshots/en/uploads/2024/01/12191911/seed.jpg',
        'video': 'https://youtu.be/spEGrcp4ngk?si=TLtkHQh9xoadqjQY',
      },
      {
        'tip': 'Snack on air-popped popcorn',
        'image':
            'https://www.shutterstock.com/image-photo/wooden-bowl-salted-popcorn-on-600nw-1309555294.jpg',
        'video': 'https://youtu.be/hhZNyTtnayY?si=fO3jWsx_iD3RkOgX',
      }
    ],
    'Avoid caffeine to improve mood stability': [
      {
        'tip': 'Switch to herbal teas',
        'image':
            'https://static.toiimg.com/thumb/imgsize-191579,msid-69385334,width-375,height-210,resizemode-75/69385334.jpg',
        'video': 'https://youtu.be/CetNiKmYG7U?si=7oezZc7abHtoPfk2',
      },
      {
        'tip': 'Try decaf coffee alternatives',
        'image':
            'https://www.shutterstock.com/image-vector/stop-drinking-tea-coffee-concept-600nw-2060529872.jpg',
        'video': 'https://youtu.be/ijpuuykrtys?si=NpHt76tgQFJhHzIw',
      },
      {
        'tip': 'Drink more water instead',
        'image':
            'https://health.ucdavis.edu/media-resources/contenthub/post/internet/good-food/2022/07/images-social/drinking-water.jpg',
        'video': 'https://www.youtube.com/watch?v=9iMGFqMmUFs',
      },
      {
        'tip': 'Try natural energy boosters like B vitamins',
        'image':
            'https://images-prod.healthline.com/hlcmsresource/images/smiling-woman-holding-watermelon-in-each-hand.jpg',
        'video': 'https://youtu.be/U_O1F6uh7H4?si=ryniPD8x9decrQYW',
      },
      {
        'tip': 'Consume green smoothies for energy',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0SsuV5uieRalx21UqOjyjxv2qGsHacLHDFA&s',
        'video': 'https://youtu.be/kmuIZk_KLW4?si=o_Bfa81CLzt36TDk',
      },
      {
        'tip': 'Practice power naps for alertness',
        'image':
            'https://static.scientificamerican.com/sciam/cache/file/579C540C-3B73-46C5-9CBE94EF48158E82_source.jpg?w=1200',
        'video': 'https://youtu.be/uEHu8LIZUKI?si=ChmbQPziTrAm4wmb',
      }
    ]
}'''

python_dict = convert_to_python_dict(flutter_dict_str)

# Print the Python dictionary in a formatted way
print(json.dumps(python_dict, indent=4))
