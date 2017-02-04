as yet unclassified
blog
  ^ blog
    ifNil: [ 
      blog := (PBBlog named: 'news')
        addChild:
            ((PBPost named: 'ontheair')
                title: 'Like Minds is On The Air';
                contents: 'Welcome to the Like Minds Network';
                publication: TimeStamp now;
                addChild:
                    ((PBComment named: '1')
                        contents: 'This is awesome.';
                        author: 'The Like Minds Team';
                        website: 'http://likeminds.mynation.earth';
                        yourself);
                yourself);
        addChild:
            ((PBPost named: 'hellp')
                title: 'Hello';
                contents: 'Hi! This is my first post.';
                publication: TimeStamp today;
                yourself);
        yourself ]