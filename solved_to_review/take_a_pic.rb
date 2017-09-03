# You are standing on top of an amazing Himalayan mountain. The view is absolutely breathtaking! you want to take a picture on your phone, but... your memory is full again! ok, time to sort through your shuffled photos and make some space...
#
# Given a gallery of photos, write a function to sort through your pictures. You get a random hard disk drive full of pics, you must return an array with the 5 most recent ones PLUS the next one (same year and number following the one of the last).
#
# You will always get at least a photo and all pics will be in the format YYYY.imgN
#
# Examples:
#
# sort_photos["2016.img1","2016.img2","2015.img3","2016.img4","2013.img5"]) ==["2013.img5","2015.img3","2016.img1","2016.img2","2016.img4","2016.img5"]
# sort_photos["2016.img1"]) ==["2016.img1","2016.img2"]

def sort_photos(pics)
  pic_pairs = pics.map { |pic| pic.split('img')  }
  sorted = pic_pairs.map { |pair| [pair[0], pair[1].to_i]}.sort
  reformed = sorted.map { |pair| pair[0] + 'img' + pair[1].to_s  }.last(5)
  # sorted_pics = pics.sort.last(5) # need to account for numbers greater than 10
  final_pic = reformed.last[0..7] + (reformed.last.split('img')[1].to_i + 1).to_s
  # final_pic = sorted_pics.last[0..7] + (sorted_pics.last.split('img')[1].to_i + 1).to_s
  # final_pic = sorted_pics.last[0..7] + (sorted_pics.last[-1].to_i + 1).to_s
  reformed << final_pic
  # sorted_pics << final_pic
end

p sort_photos(["2016.img1","2016.img2","2015.img3","2016.img4","2013.img5"])
p sort_photos(["2016.img1"])
