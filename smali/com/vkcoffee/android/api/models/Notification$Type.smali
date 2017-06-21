.class public final enum Lcom/vkcoffee/android/api/models/Notification$Type;
.super Ljava/lang/Enum;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/models/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/api/models/Notification$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum CommentPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum CommentPost:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum CommentVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum CopyPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum CopyPost:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum CopyVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum Follow:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum FriendAccepted:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum Grouped:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum Header:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum LikeComment:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum LikeCommentPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum LikeCommentTopic:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum LikeCommentVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum LikePhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum LikePost:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum LikeVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum Mention:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum MentionCommentPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum MentionCommentVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum MentionComments:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum ReplyComment:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum ReplyCommentMarket:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum ReplyCommentPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum ReplyCommentVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum ReplyTopic:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum Unknown:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum Wall:Lcom/vkcoffee/android/api/models/Notification$Type;

.field public static final enum WallPublish:Lcom/vkcoffee/android/api/models/Notification$Type;


# instance fields
.field public final activity:Lcom/vkcoffee/android/api/models/Notification$Activity;

.field public final feedbackType:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

.field public final grandParentType:Lcom/vkcoffee/android/api/models/Notification$ParentType;

.field private final mType:Ljava/lang/String;

.field public final parentType:Lcom/vkcoffee/android/api/models/Notification$ParentType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v1, "Follow"

    const-string/jumbo v3, "follow"

    sget-object v4, Lcom/vkcoffee/android/api/models/Notification$Activity;->Follow:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v5, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v6, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Users:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v0, Lcom/vkcoffee/android/api/models/Notification$Type;->Follow:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 108
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "FriendAccepted"

    const-string/jumbo v6, "friend_accepted"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->FriendAccepted:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Users:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->FriendAccepted:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 109
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "Mention"

    const-string/jumbo v6, "mention"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Mention:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Post:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    move v5, v12

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->Mention:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 110
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "MentionComments"

    const-string/jumbo v6, "mention_comments"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Mention:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Post:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Comment:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    move v5, v13

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->MentionComments:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 111
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "Wall"

    const-string/jumbo v6, "wall"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Wall:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Post:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    move v5, v14

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->Wall:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 112
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "WallPublish"

    const/4 v5, 0x5

    const-string/jumbo v6, "wall_publish"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Wall:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Post:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->WallPublish:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 113
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "CommentPost"

    const/4 v5, 0x6

    const-string/jumbo v6, "comment_post"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Comment:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Post:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Comment:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->CommentPost:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 114
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "CommentPhoto"

    const/4 v5, 0x7

    const-string/jumbo v6, "comment_photo"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Comment:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Photo:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Comment:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->CommentPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 115
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "CommentVideo"

    const/16 v5, 0x8

    const-string/jumbo v6, "comment_video"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Comment:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Video:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Comment:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->CommentVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 116
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "ReplyComment"

    const/16 v5, 0x9

    const-string/jumbo v6, "reply_comment"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Reply:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Comment:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Comment:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Post:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->ReplyComment:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 117
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "ReplyCommentPhoto"

    const/16 v5, 0xa

    const-string/jumbo v6, "reply_comment_photo"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Reply:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Comment:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Comment:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Photo:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->ReplyCommentPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 118
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "ReplyCommentVideo"

    const/16 v5, 0xb

    const-string/jumbo v6, "reply_comment_video"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Reply:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Comment:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Comment:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Video:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->ReplyCommentVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 119
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "ReplyCommentMarket"

    const/16 v5, 0xc

    const-string/jumbo v6, "reply_comment_market"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Reply:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Market:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Comment:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Market:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->ReplyCommentMarket:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 120
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "ReplyTopic"

    const/16 v5, 0xd

    const-string/jumbo v6, "reply_topic"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Reply:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Topic:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Comment:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->ReplyTopic:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 121
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "LikePost"

    const/16 v5, 0xe

    const-string/jumbo v6, "like_post"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Like:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Post:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Users:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->LikePost:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 122
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "LikeComment"

    const/16 v5, 0xf

    const-string/jumbo v6, "like_comment"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Like:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Comment:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Users:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Post:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->LikeComment:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 123
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "LikePhoto"

    const/16 v5, 0x10

    const-string/jumbo v6, "like_photo"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Like:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Photo:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Users:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->LikePhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 124
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "LikeVideo"

    const/16 v5, 0x11

    const-string/jumbo v6, "like_video"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Like:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Video:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Users:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->LikeVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 125
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "LikeCommentPhoto"

    const/16 v5, 0x12

    const-string/jumbo v6, "like_comment_photo"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Like:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Comment:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Users:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Photo:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->LikeCommentPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 126
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "LikeCommentVideo"

    const/16 v5, 0x13

    const-string/jumbo v6, "like_comment_video"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Like:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Comment:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Users:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Video:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->LikeCommentVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 127
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "LikeCommentTopic"

    const/16 v5, 0x14

    const-string/jumbo v6, "like_comment_topic"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Like:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Comment:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Users:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Topic:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->LikeCommentTopic:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 128
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "CopyPost"

    const/16 v5, 0x15

    const-string/jumbo v6, "copy_post"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Copy:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Post:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Copy:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->CopyPost:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 129
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "CopyPhoto"

    const/16 v5, 0x16

    const-string/jumbo v6, "copy_photo"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Copy:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Photo:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Copy:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->CopyPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 130
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "CopyVideo"

    const/16 v5, 0x17

    const-string/jumbo v6, "copy_video"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Copy:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Video:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Copy:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->CopyVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 131
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "MentionCommentPhoto"

    const/16 v5, 0x18

    const-string/jumbo v6, "mention_comment_photo"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Mention:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Photo:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Comment:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->MentionCommentPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 132
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "MentionCommentVideo"

    const/16 v5, 0x19

    const-string/jumbo v6, "mention_comment_video"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->Mention:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Video:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Comment:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->MentionCommentVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 133
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "Grouped"

    const/16 v5, 0x1a

    const-string/jumbo v6, "grouped"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->None:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Group:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->Grouped:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 134
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "Header"

    const/16 v5, 0x1b

    const-string/jumbo v6, "header"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->None:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Header:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->Header:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 135
    new-instance v3, Lcom/vkcoffee/android/api/models/Notification$Type;

    const-string/jumbo v4, "Unknown"

    const/16 v5, 0x1c

    const-string/jumbo v6, "unknown"

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Activity;->None:Lcom/vkcoffee/android/api/models/Notification$Activity;

    sget-object v8, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v9, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->None:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v10, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/api/models/Notification$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V

    sput-object v3, Lcom/vkcoffee/android/api/models/Notification$Type;->Unknown:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 104
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/vkcoffee/android/api/models/Notification$Type;

    sget-object v1, Lcom/vkcoffee/android/api/models/Notification$Type;->Follow:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vkcoffee/android/api/models/Notification$Type;->FriendAccepted:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/vkcoffee/android/api/models/Notification$Type;->Mention:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v1, v0, v12

    sget-object v1, Lcom/vkcoffee/android/api/models/Notification$Type;->MentionComments:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v1, v0, v13

    sget-object v1, Lcom/vkcoffee/android/api/models/Notification$Type;->Wall:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->WallPublish:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->CommentPost:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->CommentPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->CommentVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->ReplyComment:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->ReplyCommentPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->ReplyCommentVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->ReplyCommentMarket:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->ReplyTopic:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->LikePost:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->LikeComment:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->LikePhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->LikeVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->LikeCommentPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->LikeCommentVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->LikeCommentTopic:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->CopyPost:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->CopyPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->CopyVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->MentionCommentPhoto:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->MentionCommentVideo:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->Grouped:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->Header:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$Type;->Unknown:Lcom/vkcoffee/android/api/models/Notification$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/api/models/Notification$Type;->$VALUES:[Lcom/vkcoffee/android/api/models/Notification$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/vkcoffee/android/api/models/Notification$Activity;Lcom/vkcoffee/android/api/models/Notification$ParentType;Lcom/vkcoffee/android/api/models/Notification$FeedbackType;Lcom/vkcoffee/android/api/models/Notification$ParentType;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "activity"    # Lcom/vkcoffee/android/api/models/Notification$Activity;
    .param p5, "parent"    # Lcom/vkcoffee/android/api/models/Notification$ParentType;
    .param p6, "feedback"    # Lcom/vkcoffee/android/api/models/Notification$FeedbackType;
    .param p7, "grandParentType"    # Lcom/vkcoffee/android/api/models/Notification$ParentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/api/models/Notification$Activity;",
            "Lcom/vkcoffee/android/api/models/Notification$ParentType;",
            "Lcom/vkcoffee/android/api/models/Notification$FeedbackType;",
            "Lcom/vkcoffee/android/api/models/Notification$ParentType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput-object p3, p0, Lcom/vkcoffee/android/api/models/Notification$Type;->mType:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lcom/vkcoffee/android/api/models/Notification$Type;->parentType:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    .line 149
    iput-object p6, p0, Lcom/vkcoffee/android/api/models/Notification$Type;->feedbackType:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    .line 150
    iput-object p7, p0, Lcom/vkcoffee/android/api/models/Notification$Type;->grandParentType:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    .line 151
    iput-object p4, p0, Lcom/vkcoffee/android/api/models/Notification$Type;->activity:Lcom/vkcoffee/android/api/models/Notification$Activity;

    .line 152
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/vkcoffee/android/api/models/Notification$Type;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {}, Lcom/vkcoffee/android/api/models/Notification$Type;->values()[Lcom/vkcoffee/android/api/models/Notification$Type;

    move-result-object v2

    .line 156
    .local v2, "values":[Lcom/vkcoffee/android/api/models/Notification$Type;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 157
    aget-object v1, v2, v0

    .line 158
    .local v1, "value":Lcom/vkcoffee/android/api/models/Notification$Type;
    iget-object v3, v1, Lcom/vkcoffee/android/api/models/Notification$Type;->mType:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    .end local v1    # "value":Lcom/vkcoffee/android/api/models/Notification$Type;
    :goto_1
    return-object v1

    .line 156
    .restart local v1    # "value":Lcom/vkcoffee/android/api/models/Notification$Type;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "value":Lcom/vkcoffee/android/api/models/Notification$Type;
    :cond_1
    sget-object v1, Lcom/vkcoffee/android/api/models/Notification$Type;->Unknown:Lcom/vkcoffee/android/api/models/Notification$Type;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/api/models/Notification$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v0, Lcom/vkcoffee/android/api/models/Notification$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/models/Notification$Type;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/api/models/Notification$Type;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/vkcoffee/android/api/models/Notification$Type;->$VALUES:[Lcom/vkcoffee/android/api/models/Notification$Type;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/api/models/Notification$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/api/models/Notification$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Notification$Type;->mType:Ljava/lang/String;

    return-object v0
.end method
