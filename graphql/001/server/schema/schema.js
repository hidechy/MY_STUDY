const graphiql = require('graphql')

var _ = require('lodash')

const User = require("../model/user")
const Hobby = require("../model/hobby")
const Post = require("../model/post")





// var usersdata = [
//     {id: '10', name: 'toyohide', age: 48, profession: 'programmer'},
//     {id: '20', name: 'kozy', age: 44, profession: 'salesman'},
//     {id: '30', name: 'tsuyoshi', age: 38, profession: 'serviceman'},
//     {id: '40', name: 'ryu-ichi', age: 47, profession: 'yakuza'},
//     {id: '50', name: 'matsuu', age: 34, profession: 'agent'},
// ]




/*
var hobbiesData = [
    {id: '1', title: 'programming', description: 'tanoshii', userId: '10'},
    {id: '2', title: 'boxing', description: 'nice', userId: '10'},
    {id: '3', title: 'game', description: 'ma-ma-', userId: '10'},
    {id: '4', title: 'cooking', description: 'boo', userId: '40'},
    {id: '5', title: 'walking', description: 'iketeru', userId: '10'},
]

var postsData = [
    {id: '1', comment: 'aaaaa', userId: '10'},
    {id: '2', comment: 'bbbbb', userId: '20'},
    {id: '3', comment: 'ccccc', userId: '30'},
    {id: '4', comment: 'ddddd', userId: '10'},
    {id: '5', comment: 'eeeee', userId: '20'},
]
*/



const {
    GraphQLObjectType,
    GraphQLID,
    GraphQLString,
    GraphQLInt,
    GraphQLSchema,
    GraphQLList
} = graphiql
















const UserType = new GraphQLObjectType({
    name: 'User',
    description: 'Documentation for user...',
    fields: () => ({
        id: {type: GraphQLID},
        name: {type: graphiql.GraphQLString},
        age: {type: graphiql.GraphQLInt},
        profession: {type: GraphQLString}




        // ,
        // posts: {
        //     type: new GraphQLList(PostType),
        //     resolve(parent, args) {
        //         return _.filter(postsData, {userId: parent.id})
        //     }
        // }




        // ,
        // hobbies: {
        //     type: new GraphQLList(HobbyType),
        //     resolve(parent, args) {
        //         return _.filter(hobbiesData, {userId: parent.id})
        //     }
        // }

    })
});





const HobbyType = new GraphQLObjectType({
    name: 'Hobby',
    description: 'Hobby Description',
    fields: () => ({
        id: {type: GraphQLID},
        title: {type: GraphQLString},
        description: {type: GraphQLString},

        user: {
            type: UserType,
            resolve(parent, args){
                return _.find(usersdata, {id: parent.userId})
            }
        }

    })
})








const PostType = new GraphQLObjectType({
    name: 'Post',
    description: 'Post Description',
    fields: () => ({
        id: {type: GraphQLID},
        comment: {type: GraphQLString},

        user: {
            type: UserType,
            resolve(parent, args){
                return _.find(usersdata, {id: parent.userId})
            }
        }

    })
})














const RootQuery = new GraphQLObjectType({
    name: 'RootQueryType',
    description: 'description',
    fields: {
        user: {
            type: UserType,
            args: {
                id: {type: GraphQLString}
            },
            resolve(parent, args) {
                return _.find(usersdata, {id: args.id})
//return User.find({id: args.id})
            }
        },

        users: {
            type: new GraphQLList(UserType),
            resolve(parent, args) {
                return usersdata;
            }
        },

        hobby: {
            type: HobbyType,
            args: {
                id: {type: GraphQLID},
                title: {type: GraphQLString}
            },
            resolve(parent, args) {
                return _.find(hobbiesData, {id: args.id})
            }
        },

        hobbies: {
            type: new GraphQLList(HobbyType),
            resolve(parent, args){
                return hobbiesData;
            }
        },

        post: {
            type: PostType,
            args: {
                id: {type: GraphQLID}
            },
            resolve(parent, args) {
                return _.find(postsData, {id: args.id})
            }
        },

        posts: {
            type: new GraphQLList(PostType),
            resolve(parent, args){
                return postsData;
            }
        }

    }
});










const Mutation = new GraphQLObjectType({
    name: 'Mutation',
    fields: {
        createUser: {
            type: UserType,
            args: {
//                id: {type: GraphQLID}
                name: {type: GraphQLString},
                age: {type: GraphQLInt},
                profession: {type: GraphQLString}
            },

            resolve(parent, args) {
                // let user = {
                //     name: args.name,
                //     age: args.age,
                //     profession: args.profession
                // }

                let user = User({
                    name: args.name,
                    age: args.age,
                    profession: args.profession
                });

                return user.save();
            }
        },

        CreatePost: {
            type: PostType,
            args: {
//                id: {type: GraphQLID}
                comment: {type: GraphQLString},
                userId: {type: GraphQLID}
            },
            resolve(parent, args) {
                // let post = {
                //     comment: args.comment,
                //     userId: args.userId
                // }

                let post = Post({
                    comment: args.comment,
                    userId: args.userId
                });

                return post.save();
            }
        },

        CreateHobby: {
            type: HobbyType,
            args: {
//                id: {type: GraphQLID}
                title: {type: GraphQLString},
                description: {type: GraphQLString},
                userId: {type: GraphQLID}
            },
            resolve(parent, args) {
                // let hobby = {
                //     title: args.title,
                //     description: args.description,
                //     userId: args.userId
                // }

                let hobby = Hobby({
                    title: args.title,
                    description: args.description,
                    userId: args.userId
                });

                return hobby.save();
            }
        }
    }
});

module.exports = new GraphQLSchema({
    query: RootQuery,
    mutation: Mutation,
})
