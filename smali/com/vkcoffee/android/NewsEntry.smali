.class public Lcom/vkcoffee/android/NewsEntry;
.super Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;
.source "NewsEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/NewsEntry$XColorSpan;,
        Lcom/vkcoffee/android/NewsEntry$URLSpanNoUnderline;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRAS_KEY_USER_NOTIFICATION:Ljava/lang/String; = "extras_key_user_notification"

.field public static final FLAG_CAN_COMMENT:I = 0x2

.field public static final FLAG_CAN_DELETE:I = 0x40

.field public static final FLAG_CAN_EDIT:I = 0x80

.field public static final FLAG_CAN_FIX:I = 0x10000

.field public static final FLAG_CAN_RETWEET:I = 0x1

.field public static final FLAG_DELETED_PROFILE:I = 0x8000

.field public static final FLAG_EXPORT_FACEBOOK:I = 0x4000

.field public static final FLAG_EXPORT_TWITTER:I = 0x2000

.field public static final FLAG_FIXED:I = 0x400

.field public static final FLAG_FRIENDS_ONLY:I = 0x200

.field public static final FLAG_GRAY_TEXT:I = 0x10

.field public static final FLAG_IS_PROFILE_UPDATE:I = 0x100

.field public static final FLAG_IS_RETWEET:I = 0x20

.field public static final FLAG_LIKED:I = 0x8

.field public static final FLAG_POSTPONED:I = 0x800

.field public static final FLAG_RETWEETED:I = 0x4

.field public static final FLAG_SUGGESTED:I = 0x1000

.field public static final OWNER_ID_FRIENDS_RECOMMENDATION:I = 0x77359400

.field public static final OWNER_ID_NOTIFICATION:I = 0x77359401

.field public static final PLATFORM_ANDROID:I = 0x2

.field public static final PLATFORM_INSTAGRAM:I = 0x8

.field public static final PLATFORM_IPAD:I = 0x4

.field public static final PLATFORM_IPHONE:I = 0x3

.field public static final PLATFORM_MOBILE_SITE:I = 0x1

.field public static final PLATFORM_OTHER_APP:I = 0x7

.field public static final PLATFORM_PRISMA:I = 0xa

.field public static final PLATFORM_SITE:I = 0x0

.field public static final PLATFORM_SNAPSTER:I = 0x9

.field public static final PLATFORM_WINDOWS:I = 0x6

.field public static final PLATFORM_WINPHONE:I = 0x5

.field public static final TYPE_ADDED_PHOTO:I = 0x6

.field public static final TYPE_AD_PROMO_POST:I = 0xc

.field public static final TYPE_AUDIO:I = 0xa

.field public static final TYPE_BIRTHDAY:I = 0x8

.field public static final TYPE_BOARD_COMMENT:I = 0xe

.field public static final TYPE_COMMENT:I = 0x5

.field public static final TYPE_DOCUMENT:I = 0x10

.field public static final TYPE_FRIENDS_RECOMM:I = 0xd

.field public static final TYPE_GOOD:I = 0x12

.field public static final TYPE_MARKET_COMMENT:I = 0x11

.field public static final TYPE_NOTE:I = 0x3

.field public static final TYPE_PHOTO:I = 0x1

.field public static final TYPE_POST:I = 0x0

.field public static final TYPE_SHIT:I = 0xb

.field public static final TYPE_TAGGED_PHOTO:I = 0x7

.field public static final TYPE_TOPIC:I = 0x4

.field public static final TYPE_USER_NOTIFICATION:I = 0xf

.field public static final TYPE_VIDEO:I = 0x2

.field public static final TYPE_WALL_PHOTO:I = 0x9


# instance fields
.field public attachTitle:Ljava/lang/String;

.field public attachType:I

.field public attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public createdBy:I

.field public displayablePreviewText:Ljava/lang/CharSequence;

.field public displayableRetweetText:Ljava/lang/CharSequence;

.field public extra:Landroid/os/Bundle;

.field public f:Z

.field public flags:I

.field public lastComment:Ljava/lang/String;

.field public lastCommentTime:I

.field public lastCommentUserID:I

.field public lastCommentUserName:Ljava/lang/String;

.field public lastCommentUserPhoto:Ljava/lang/String;

.field public numComments:I

.field public numLikes:I

.field public numRetweets:I

.field public order_position:I

.field public ownerID:I

.field public platform:I

.field public postID:I

.field public repostAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public retweetOrigId:I

.field public retweetOrigTime:I

.field public retweetText:Ljava/lang/String;

.field public retweetType:I

.field public retweetUID:I

.field public retweetUserName:Ljava/lang/String;

.field public retweetUserPhoto:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public time:I

.field public type:I

.field public userID:I

.field public userName:Ljava/lang/String;

.field public userPhotoURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1016
    new-instance v0, Lcom/vkcoffee/android/NewsEntry$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/NewsEntry$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/NewsEntry;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 105
    const-string/jumbo v0, "UNKNOWN"

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 109
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 110
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 119
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachType:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 123
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 124
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 136
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->order_position:I

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 2
    .param p1, "e"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 105
    const-string/jumbo v0, "UNKNOWN"

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 109
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 110
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 119
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachType:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 123
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 124
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 136
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->order_position:I

    .line 154
    iget-object v0, p1, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 155
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 156
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 157
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 158
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->type:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 159
    iget-object v0, p1, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 160
    iget-object v0, p1, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 161
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->time:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 162
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 166
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    .line 167
    iget-object v0, p1, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 169
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    .line 170
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    .line 171
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    .line 172
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 173
    iget-object v0, p1, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->flags:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 179
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->type:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 180
    iget-object v0, p1, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/vkcoffee/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 182
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->platform:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    .line 184
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->order_position:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->order_position:I

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/data/UserNotification;)V
    .locals 2
    .param p1, "userNotification"    # Lcom/vkcoffee/android/data/UserNotification;

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 105
    const-string/jumbo v0, "UNKNOWN"

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 109
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 110
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 119
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachType:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 123
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 124
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 136
    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->order_position:I

    .line 147
    const/16 v0, 0xf

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 148
    iget-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v1, "extras_key_user_notification"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    const v0, 0x77359401

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 150
    iget v0, p1, Lcom/vkcoffee/android/data/UserNotification;->id:I

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 151
    return-void
.end method

.method constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 5
    .param p1, "in"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    const/4 v4, 0x0

    .line 867
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 105
    const-string/jumbo v3, "UNKNOWN"

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 109
    iput v4, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 110
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 111
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 119
    iput v4, p0, Lcom/vkcoffee/android/NewsEntry;->attachType:I

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 123
    iput v4, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 124
    iput v4, p0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 129
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    .line 131
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 136
    iput v4, p0, Lcom/vkcoffee/android/NewsEntry;->order_position:I

    .line 868
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 869
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 870
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 871
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 872
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 873
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 874
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 875
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 876
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 877
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    .line 878
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 879
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 880
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->attachType:I

    .line 881
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->attachTitle:Ljava/lang/String;

    .line 882
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 884
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 885
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 886
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 887
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    .line 888
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    .line 889
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    .line 890
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->createdBy:I

    .line 891
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    .line 893
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    .line 894
    .local v0, "attachmentsLen":I
    if-ltz v0, :cond_0

    .line 895
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 896
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 897
    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    const-class v4, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/vkcoffee/android/utils/Serializer;->readSerializable(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Serializable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 900
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v2

    .line 901
    .local v2, "repostAttachmentLen":I
    if-ltz v2, :cond_1

    .line 902
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 903
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 904
    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    const-class v4, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/vkcoffee/android/utils/Serializer;->readSerializable(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Serializable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 908
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 910
    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 911
    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 914
    :cond_2
    const-class v3, Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    .line 916
    invoke-virtual {p0}, Lcom/vkcoffee/android/NewsEntry;->layoutThumbs()V

    .line 918
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/NewsEntry;->order_position:I

    .line 919
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "item"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p3, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 45
    .param p1, "item"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 191
    .local p2, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p3, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p4, "f":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 105
    const-string/jumbo v4, "UNKNOWN"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 109
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 110
    const-string/jumbo v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 111
    const-string/jumbo v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 119
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachType:I

    .line 122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 123
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 124
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 129
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    .line 131
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 136
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->order_position:I

    .line 193
    :try_start_0
    const-string/jumbo v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    const-string/jumbo v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v4, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 221
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 222
    const-string/jumbo v4, "from_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "from_id"

    :goto_2
    const-string/jumbo v6, "source_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v35

    .line 223
    .local v35, "posterID":I
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 226
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 227
    const-string/jumbo v4, "owner_id"

    const-string/jumbo v6, "to_id"

    const-string/jumbo v7, "source_id"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 229
    const-string/jumbo v4, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_a

    .line 231
    const-string/jumbo v4, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 235
    :goto_3
    const-string/jumbo v4, "copy_comment_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0805a8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "copy_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "copy_post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 240
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v6, 0x12

    if-ne v4, v6, :cond_3

    .line 241
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/NewsEntry;->parseMarket(Lorg/json/JSONObject;Lcom/vkcoffee/android/NewsEntry;)Lcom/vkcoffee/android/NewsEntry;

    .line 244
    :cond_3
    const-string/jumbo v4, "attachments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 245
    const-string/jumbo v4, "attachments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 246
    .local v14, "atts":Lorg/json/JSONArray;
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_f

    .line 247
    const/16 v20, 0x0

    .line 248
    .local v20, "hasSnippet":Z
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_4
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/16 v6, 0xa

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_b

    .line 251
    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/attachments/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v12

    .line 252
    .local v12, "att":Lcom/vkcoffee/android/attachments/Attachment;
    if-eqz v12, :cond_4

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_4
    instance-of v4, v12, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    if-eqz v4, :cond_5

    .line 256
    const/16 v20, 0x1

    .line 248
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 195
    .end local v12    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v14    # "atts":Lorg/json/JSONArray;
    .end local v20    # "hasSnippet":Z
    .end local v21    # "i":I
    .end local v35    # "posterID":I
    :sswitch_0
    const-string/jumbo v7, "topic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v7, "note"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x2

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v7, "photo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x3

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v7, "wall_photo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x4

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v7, "photo_tag"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x5

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v7, "market"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x6

    goto/16 :goto_0

    .line 197
    :pswitch_0
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 583
    :catch_0
    move-exception v43

    .line 584
    .local v43, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    move-object/from16 v0, v43

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 585
    const-string/jumbo v4, "vk"

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 587
    const-string/jumbo v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 589
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080165

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 592
    .end local v43    # "x":Ljava/lang/Exception;
    :cond_7
    :goto_5
    return-void

    .line 200
    :pswitch_1
    const/4 v4, 0x2

    :try_start_1
    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    goto/16 :goto_1

    .line 203
    :pswitch_2
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    goto/16 :goto_1

    .line 206
    :pswitch_3
    const-string/jumbo v4, "photos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x6

    :goto_6
    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x1

    goto :goto_6

    .line 209
    :pswitch_4
    const-string/jumbo v4, "photos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    goto/16 :goto_1

    .line 214
    :pswitch_5
    const/4 v4, 0x7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    goto/16 :goto_1

    .line 217
    :pswitch_6
    const/16 v4, 0x12

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    goto/16 :goto_1

    .line 222
    :cond_9
    const-string/jumbo v4, "owner_id"

    goto/16 :goto_2

    .line 233
    .restart local v35    # "posterID":I
    :cond_a
    const-string/jumbo v4, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    goto/16 :goto_3

    .line 259
    .restart local v14    # "atts":Lorg/json/JSONArray;
    .restart local v20    # "hasSnippet":Z
    .restart local v21    # "i":I
    :cond_b
    if-eqz v20, :cond_e

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkcoffee/android/attachments/Attachment;

    .line 261
    .restart local v12    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v6, v12, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    if-eqz v6, :cond_c

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/attachments/Attachment;

    .line 263
    .local v13, "att1":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v6, v13, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    if-eqz v6, :cond_d

    .line 264
    move-object v0, v13

    check-cast v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    move-object/from16 v38, v0

    .line 265
    .local v38, "sa":Lcom/vkcoffee/android/attachments/SnippetAttachment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    new-instance v7, Lcom/vkcoffee/android/attachments/LinkAttachment;

    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->link:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v9, v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->title:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/vkcoffee/android/attachments/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 273
    .end local v12    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v13    # "att1":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v38    # "sa":Lcom/vkcoffee/android/attachments/SnippetAttachment;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/vkcoffee/android/attachments/Attachment;->sort(Ljava/util/List;)V

    .line 281
    .end local v14    # "atts":Lorg/json/JSONArray;
    .end local v20    # "hasSnippet":Z
    .end local v21    # "i":I
    :cond_f
    const-string/jumbo v4, "id"

    const-string/jumbo v6, "post_id"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 282
    const-string/jumbo v4, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v4, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "count"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 283
    const-string/jumbo v4, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "count"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 285
    :cond_10
    const-string/jumbo v4, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "can_post"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_11

    .line 286
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 289
    :cond_11
    const-string/jumbo v4, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 290
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 292
    :cond_12
    const-string/jumbo v4, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string/jumbo v4, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "user_reposted"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v4, v6, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    if-ne v4, v6, :cond_13

    .line 293
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 295
    :cond_13
    const-string/jumbo v4, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 296
    const-string/jumbo v4, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "count"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 298
    :cond_14
    const-string/jumbo v4, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string/jumbo v4, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "can_publish"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_16

    :cond_15
    const-string/jumbo v4, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string/jumbo v4, "reposts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "user_reposted"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_17

    .line 299
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 301
    :cond_17
    const-string/jumbo v4, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string/jumbo v4, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "count"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 302
    const-string/jumbo v4, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "count"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 304
    :cond_18
    const-string/jumbo v4, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string/jumbo v4, "likes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "user_likes"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_19

    .line 305
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 307
    :cond_19
    const-string/jumbo v4, "can_edit"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1a

    .line 308
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 310
    :cond_1a
    const-string/jumbo v4, "can_delete"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1b

    .line 311
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x40

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 313
    :cond_1b
    const-string/jumbo v4, "friends_only"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1c

    .line 314
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 316
    :cond_1c
    const-string/jumbo v4, "can_pin"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1d

    .line 317
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    const/high16 v6, 0x10000

    or-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 319
    :cond_1d
    const-string/jumbo v4, "is_pinned"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1e

    const-string/jumbo v4, "fixed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1f

    .line 320
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 330
    :cond_1f
    const-string/jumbo v4, "post_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 331
    const-string/jumbo v4, "post_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 332
    .local v36, "ptype":Ljava/lang/String;
    const-string/jumbo v4, "reply"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 333
    const/4 v4, 0x5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 334
    const-string/jumbo v4, "post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v6, "parent_post"

    const-string/jumbo v7, "post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    .end local v36    # "ptype":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_21

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v6, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    new-instance v7, Lcom/vkcoffee/android/Photo;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Lcom/vkcoffee/android/Photo;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_21
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_25

    .line 344
    const-string/jumbo v4, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 345
    .local v40, "title":Ljava/lang/String;
    const-string/jumbo v4, "photo_320"

    const-string/jumbo v6, "photo_130"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 346
    .local v22, "image":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move/from16 v31, v0

    .line 347
    .local v31, "oid":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move/from16 v41, v0

    .line 348
    .local v41, "vid":I
    const-string/jumbo v4, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    .line 350
    .local v17, "duration":I
    const-string/jumbo v4, "video"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 351
    .local v27, "jsonVideo":Lorg/json/JSONObject;
    if-nez v27, :cond_23

    const/16 v26, 0x0

    .line 352
    .local v26, "jsonArrayItems":Lorg/json/JSONArray;
    :goto_7
    if-eqz v26, :cond_24

    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_24

    .line 353
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_8
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_25

    .line 354
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v42

    .line 355
    .local v42, "video":Lorg/json/JSONObject;
    if-eqz v42, :cond_22

    .line 356
    new-instance v3, Lcom/vkcoffee/android/attachments/VideoAttachment;

    const-string/jumbo v4, "title"

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "photo_320"

    const-string/jumbo v7, "photo_130"

    .line 357
    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "owner_id"

    .line 358
    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    const-string/jumbo v7, "id"

    .line 359
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    const-string/jumbo v8, "duration"

    .line 360
    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "access_key"

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 361
    .local v3, "videoAttachment":Lcom/vkcoffee/android/attachments/VideoAttachment;
    const-string/jumbo v4, "views"

    const/4 v6, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/vkcoffee/android/attachments/VideoAttachment;->views:I

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const-string/jumbo v4, "comments"

    const/4 v6, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 365
    const-string/jumbo v4, "likes"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string/jumbo v4, "likes"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "count"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 366
    const-string/jumbo v4, "likes"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "count"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 353
    .end local v3    # "videoAttachment":Lcom/vkcoffee/android/attachments/VideoAttachment;
    :cond_22
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_8

    .line 351
    .end local v21    # "i":I
    .end local v26    # "jsonArrayItems":Lorg/json/JSONArray;
    .end local v42    # "video":Lorg/json/JSONObject;
    :cond_23
    const-string/jumbo v4, "items"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v26

    goto/16 :goto_7

    .line 371
    .restart local v26    # "jsonArrayItems":Lorg/json/JSONArray;
    :cond_24
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v4, Lcom/vkcoffee/android/attachments/VideoAttachment;

    move-object/from16 v5, v40

    move-object/from16 v6, v22

    move/from16 v7, v31

    move/from16 v8, v41

    move/from16 v9, v17

    invoke-direct/range {v4 .. v9}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .end local v17    # "duration":I
    .end local v22    # "image":Ljava/lang/String;
    .end local v26    # "jsonArrayItems":Lorg/json/JSONArray;
    .end local v27    # "jsonVideo":Lorg/json/JSONObject;
    .end local v31    # "oid":I
    .end local v40    # "title":Ljava/lang/String;
    .end local v41    # "vid":I
    :cond_25
    const-string/jumbo v4, "geo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 376
    const-string/jumbo v4, "geo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 377
    .local v19, "geo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/attachments/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/GeoAttachment;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v19    # "geo":Lorg/json/JSONObject;
    :cond_26
    if-eqz p4, :cond_2a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2a

    const/16 v18, 0x1

    .line 380
    .local v18, "ff":Z
    :goto_9
    const-string/jumbo v4, "post_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 381
    const-string/jumbo v4, "post_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v39

    .line 382
    .local v39, "source":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/NewsEntry;->setInfoFromPostSource(Lorg/json/JSONObject;Z)V

    .line 384
    .end local v39    # "source":Lorg/json/JSONObject;
    :cond_27
    const-string/jumbo v4, "photos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string/jumbo v4, "photo_tags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 385
    :cond_28
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/NewsEntry;->f:Z

    .line 386
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v6, 0x6

    if-eq v4, v6, :cond_29

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v6, 0x9

    if-ne v4, v6, :cond_2b

    :cond_29
    const-string/jumbo v4, "photos"

    :goto_a
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v24

    .line 387
    .local v24, "jc":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v33, v0

    .line 393
    .local v33, "ph":Lorg/json/JSONArray;
    move-object/from16 v0, v24

    iget v4, v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;->count:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 394
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_b
    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_2c

    .line 395
    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    .line 396
    .local v34, "photo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v6, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    new-instance v7, Lcom/vkcoffee/android/Photo;

    move-object/from16 v0, v34

    invoke-direct {v7, v0}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Lcom/vkcoffee/android/Photo;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 379
    .end local v18    # "ff":Z
    .end local v21    # "i":I
    .end local v24    # "jc":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    .end local v33    # "ph":Lorg/json/JSONArray;
    .end local v34    # "photo":Lorg/json/JSONObject;
    :cond_2a
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 386
    .restart local v18    # "ff":Z
    :cond_2b
    const-string/jumbo v4, "photo_tags"

    goto :goto_a

    .line 398
    .restart local v21    # "i":I
    .restart local v24    # "jc":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    .restart local v33    # "ph":Lorg/json/JSONArray;
    :cond_2c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 400
    .end local v21    # "i":I
    .end local v24    # "jc":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    .end local v33    # "ph":Lorg/json/JSONArray;
    :cond_2d
    const-string/jumbo v4, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string/jumbo v4, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_3a

    const-string/jumbo v4, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3a

    .line 401
    const-string/jumbo v4, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v32

    .line 402
    .local v32, "origPost":Lorg/json/JSONObject;
    const-string/jumbo v4, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/4 v6, 0x7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/NewsEntry;->getTypeString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2e

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 407
    :cond_2e
    const-string/jumbo v4, "text"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    .line 409
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 410
    const-string/jumbo v4, "attachments"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 411
    .local v23, "jatts":Lorg/json/JSONArray;
    if-eqz v23, :cond_34

    .line 412
    const/16 v20, 0x0

    .line 413
    .restart local v20    # "hasSnippet":Z
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_c
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/16 v6, 0xa

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_31

    .line 416
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/attachments/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v12

    .line 417
    .restart local v12    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    if-eqz v12, :cond_2f

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_2f
    instance-of v4, v12, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    if-eqz v4, :cond_30

    .line 421
    const/16 v20, 0x1

    .line 413
    :cond_30
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 424
    .end local v12    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_31
    if-eqz v20, :cond_34

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkcoffee/android/attachments/Attachment;

    .line 426
    .restart local v12    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v6, v12, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    if-eqz v6, :cond_32

    .line 427
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/attachments/Attachment;

    .line 428
    .restart local v13    # "att1":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v6, v13, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    if-eqz v6, :cond_33

    .line 429
    move-object v0, v13

    check-cast v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    move-object/from16 v38, v0

    .line 430
    .restart local v38    # "sa":Lcom/vkcoffee/android/attachments/SnippetAttachment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    new-instance v7, Lcom/vkcoffee/android/attachments/LinkAttachment;

    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->link:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v9, v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->title:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/vkcoffee/android/attachments/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 439
    .end local v12    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v13    # "att1":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v20    # "hasSnippet":Z
    .end local v21    # "i":I
    .end local v38    # "sa":Lcom/vkcoffee/android/attachments/SnippetAttachment;
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/vkcoffee/android/attachments/Attachment;->sort(Ljava/util/List;)V

    .line 440
    const-string/jumbo v4, "geo"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 441
    const-string/jumbo v4, "geo"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 442
    .restart local v19    # "geo":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/attachments/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/GeoAttachment;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .end local v19    # "geo":Lorg/json/JSONObject;
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/vkcoffee/android/attachments/Attachment;->sort(Ljava/util/List;)V

    .line 445
    const-string/jumbo v4, "owner_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    .line 446
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x20

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 447
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    const-string/jumbo v6, "DELETED"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 448
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 449
    const-string/jumbo v4, "id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    .line 450
    const-string/jumbo v4, "date"

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    .line 451
    const-string/jumbo v4, "reply"

    const-string/jumbo v6, "post_type"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 452
    const/4 v4, 0x5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    .line 453
    const-string/jumbo v4, "reply_post_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    .line 454
    const-string/jumbo v4, "from_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 455
    .local v16, "commentUid":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 456
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 458
    .end local v16    # "commentUid":I
    :cond_36
    const-string/jumbo v4, "photo"

    const-string/jumbo v6, "post_type"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 459
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    .line 461
    :cond_37
    const-string/jumbo v4, "video"

    const-string/jumbo v6, "post_type"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 462
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    .line 464
    :cond_38
    const-string/jumbo v4, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_39

    .line 465
    const-string/jumbo v4, "copy_history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v37

    .line 466
    .local v37, "repost":Lorg/json/JSONObject;
    const-string/jumbo v4, "owner_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 467
    .local v5, "oid":I
    const-string/jumbo v4, "reply"

    const-string/jumbo v6, "post_type"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 468
    const-string/jumbo v4, "from_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 469
    .end local v5    # "oid":I
    .restart local v31    # "oid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    new-instance v4, Lcom/vkcoffee/android/attachments/RepostAttachment;

    const-string/jumbo v6, "owner_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "reply_post_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "date"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "DELETED"

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "http://vk.com/images/question_a.gif"

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x5

    invoke-direct/range {v4 .. v10}, Lcom/vkcoffee/android/attachments/RepostAttachment;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v31    # "oid":I
    .end local v37    # "repost":Lorg/json/JSONObject;
    :cond_39
    :goto_d
    const-string/jumbo v4, "post_source"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 490
    const-string/jumbo v4, "post_source"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v39

    .line 491
    .restart local v39    # "source":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/NewsEntry;->setInfoFromPostSource(Lorg/json/JSONObject;Z)V

    .line 495
    .end local v23    # "jatts":Lorg/json/JSONArray;
    .end local v32    # "origPost":Lorg/json/JSONObject;
    .end local v39    # "source":Lorg/json/JSONObject;
    :cond_3a
    const-string/jumbo v4, "date"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 496
    const-string/jumbo v4, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const-string/jumbo v4, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "list"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 497
    const-string/jumbo v4, "comments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "list"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 498
    .local v30, "lca":Lorg/json/JSONArray;
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v29

    .line 499
    .local v29, "lc":Lorg/json/JSONObject;
    const-string/jumbo v4, "text"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 500
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_3c

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    const-string/jumbo v6, "\\[(id|club)(\\d+):bp-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    const-string/jumbo v7, "$5"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 505
    :goto_e
    const-string/jumbo v4, "from_id"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    .line 506
    const-string/jumbo v4, "from_id"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    .line 507
    const-string/jumbo v4, "from_id"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastCommentUserID:I

    .line 509
    const-string/jumbo v4, "date"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastCommentTime:I

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "attachments"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 511
    const-string/jumbo v4, "attachments"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 512
    .local v11, "aa":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3e

    .line 513
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v15, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_f
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_3d

    .line 515
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/attachments/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 471
    .end local v11    # "aa":Lorg/json/JSONArray;
    .end local v15    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .end local v21    # "i":I
    .end local v29    # "lc":Lorg/json/JSONObject;
    .end local v30    # "lca":Lorg/json/JSONArray;
    .restart local v5    # "oid":I
    .restart local v23    # "jatts":Lorg/json/JSONArray;
    .restart local v32    # "origPost":Lorg/json/JSONObject;
    .restart local v37    # "repost":Lorg/json/JSONObject;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    new-instance v4, Lcom/vkcoffee/android/attachments/RepostAttachment;

    const-string/jumbo v6, "id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "date"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "DELETED"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "http://vk.com/images/question_a.gif"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/vkcoffee/android/attachments/RepostAttachment;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 503
    .end local v5    # "oid":I
    .end local v23    # "jatts":Lorg/json/JSONArray;
    .end local v32    # "origPost":Lorg/json/JSONObject;
    .end local v37    # "repost":Lorg/json/JSONObject;
    .restart local v29    # "lc":Lorg/json/JSONObject;
    .restart local v30    # "lca":Lorg/json/JSONArray;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    const-string/jumbo v6, "\\[(id|club)(\\d+)\\|([^\\]]+)\\]"

    const-string/jumbo v7, "$3"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    goto/16 :goto_e

    .line 517
    .restart local v11    # "aa":Lorg/json/JSONArray;
    .restart local v15    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .restart local v21    # "i":I
    :cond_3d
    invoke-static {v15}, Lcom/vkcoffee/android/attachments/Attachment;->getLocalizedDescription(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 522
    .end local v11    # "aa":Lorg/json/JSONArray;
    .end local v15    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .end local v21    # "i":I
    .end local v29    # "lc":Lorg/json/JSONObject;
    .end local v30    # "lca":Lorg/json/JSONArray;
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/NewsEntry;->layoutThumbs()V

    .line 525
    const-string/jumbo v4, "signer_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 526
    new-instance v28, Lcom/vkcoffee/android/attachments/SignatureLinkAttachment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "http://vkontakte.ru/id"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "signer_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "signer_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v6, v4}, Lcom/vkcoffee/android/attachments/SignatureLinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .local v28, "la":Lcom/vkcoffee/android/attachments/SignatureLinkAttachment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v28    # "la":Lcom/vkcoffee/android/attachments/SignatureLinkAttachment;
    :cond_3f
    const-string/jumbo v4, "final_post"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_40

    .line 531
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    const v6, 0x8000

    or-int/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 534
    :cond_40
    const-string/jumbo v4, "reply_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 535
    new-instance v28, Lcom/vkcoffee/android/attachments/LinkAttachment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "http://vkontakte.ru/wall"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "reply_owner_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "reply_post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0805af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v6, v7}, Lcom/vkcoffee/android/attachments/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .local v28, "la":Lcom/vkcoffee/android/attachments/LinkAttachment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    .end local v28    # "la":Lcom/vkcoffee/android/attachments/LinkAttachment;
    :cond_41
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-gez v4, :cond_45

    .line 540
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v4, v4

    invoke-static {v4}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v4

    const/4 v6, 0x1

    if-lt v4, v6, :cond_42

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    if-gtz v4, :cond_43

    :cond_42
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v4, v4

    invoke-static {v4}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v4

    const/4 v6, 0x2

    if-lt v4, v6, :cond_44

    .line 541
    :cond_43
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x40

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 543
    :cond_44
    const-string/jumbo v4, "created_by"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->createdBy:I

    .line 545
    :cond_45
    const-string/jumbo v4, "postpone"

    const-string/jumbo v6, "post_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 546
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 547
    const-string/jumbo v4, "twitter_export"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_46

    .line 548
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit16 v4, v4, 0x2000

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 550
    :cond_46
    const-string/jumbo v4, "facebook_export"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_47

    .line 551
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit16 v4, v4, 0x4000

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 554
    :cond_47
    const-string/jumbo v4, "suggest"

    const-string/jumbo v6, "post_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 555
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit16 v4, v4, 0x1000

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 558
    :cond_48
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_49

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    .line 560
    .local v34, "photo":Lcom/vkcoffee/android/attachments/PhotoAttachment;
    move-object/from16 v0, v34

    iget v4, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->pid:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 561
    move-object/from16 v0, v34

    iget v4, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->oid:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 562
    const/16 v4, 0x10

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 563
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->descr:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 564
    const-string/jumbo v4, "photos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "items"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 565
    .local v25, "jphoto":Lorg/json/JSONObject;
    const-string/jumbo v4, "likes"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "count"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 566
    const/16 v6, 0x8

    const-string/jumbo v4, "likes"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v7, "user_likes"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_4a

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 567
    const-string/jumbo v4, "comments"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v6, "count"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 568
    const/4 v6, 0x2

    const-string/jumbo v4, "can_comment"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_4b

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v6, "converted_to_photo"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 570
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v6, "orig_type"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 571
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 574
    .end local v25    # "jphoto":Lorg/json/JSONObject;
    .end local v34    # "photo":Lcom/vkcoffee/android/attachments/PhotoAttachment;
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 575
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_4c

    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080179

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " <a href=\'http://vk.com\'>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "</a>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Lcom/vkcoffee/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 577
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    goto/16 :goto_5

    .line 566
    .restart local v25    # "jphoto":Lorg/json/JSONObject;
    .restart local v34    # "photo":Lcom/vkcoffee/android/attachments/PhotoAttachment;
    :cond_4a
    const/4 v4, 0x0

    goto/16 :goto_10

    .line 568
    :cond_4b
    const/4 v4, 0x0

    goto :goto_11

    .line 579
    .end local v25    # "jphoto":Lorg/json/JSONObject;
    .end local v34    # "photo":Lcom/vkcoffee/android/attachments/PhotoAttachment;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    const/4 v7, 0x7

    const/16 v4, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/NewsEntry;->getRepostTypeString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_12
    invoke-static {v6, v7, v4}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_4d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/NewsEntry;->getTypeString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_12

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7756cc83 -> :sswitch_4
        -0x40736bc4 -> :sswitch_6
        -0x32863bf3 -> :sswitch_5
        0x33aff2 -> :sswitch_2
        0x65b3e32 -> :sswitch_3
        0x696cd2f -> :sswitch_0
        0x6b0147b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private deserializeAttachments([B)V
    .locals 7
    .param p1, "b"    # [B

    .prologue
    .line 1176
    if-nez p1, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1181
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1183
    .local v3, "is":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1184
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1185
    iget-object v5, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/vkcoffee/android/attachments/Attachment;->deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1187
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1188
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_0

    .line 1189
    iget-object v5, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/vkcoffee/android/attachments/Attachment;->deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1191
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catch_0
    move-exception v4

    .line 1192
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private deserializeExtras(Ljava/lang/String;)V
    .locals 7
    .param p1, "xtra"    # Ljava/lang/String;

    .prologue
    .line 922
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 924
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 925
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 926
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 927
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 928
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 929
    .local v2, "o":Ljava/lang/Object;
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 930
    iget-object v5, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 939
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 940
    .local v4, "x":Lorg/json/JSONException;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 943
    .end local v4    # "x":Lorg/json/JSONException;
    :cond_0
    return-void

    .line 931
    .restart local v0    # "k":Ljava/lang/String;
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    .line 932
    iget-object v5, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 933
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v5, v2, Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    .line 934
    iget-object v5, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/JSONSerializable$Factory;->from(Lorg/json/JSONObject;)Lcom/vkcoffee/android/utils/JSONSerializable;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 936
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/String;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static ell(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "lim"    # I

    .prologue
    .line 1433
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1436
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getMaxThumbsWidth()I
    .locals 6

    .prologue
    .line 1363
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1365
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v2, 0x0

    .line 1366
    .local v2, "tSize":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 1367
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1368
    .local v1, "p":Landroid/graphics/Point;
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1369
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1370
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1374
    .end local v1    # "p":Landroid/graphics/Point;
    .end local v3    # "wm":Landroid/view/WindowManager;
    :goto_0
    sget-boolean v4, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x42a80000    # 84.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    :goto_1
    sub-int/2addr v2, v4

    .line 1375
    const/high16 v4, 0x44200000    # 640.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4

    .line 1372
    :cond_0
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 1374
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isTypeAd(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 139
    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static layoutThumbs(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const/4 v8, 0x1

    .line 1394
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1430
    :cond_0
    return-void

    .line 1397
    :cond_1
    const/4 v3, 0x1

    .line 1398
    .local v3, "isVideoSingle":Z
    const/4 v5, 0x0

    .line 1399
    .local v5, "videoCount":I
    const/4 v1, 0x0

    .local v1, "hasAnyThumbs":Z
    const/4 v2, 0x0

    .line 1400
    .local v2, "hasSnippets":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1401
    .local v0, "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v7, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    if-eqz v7, :cond_3

    .line 1402
    add-int/lit8 v5, v5, 0x1

    .line 1404
    :cond_3
    instance-of v7, v0, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    if-eqz v7, :cond_4

    instance-of v7, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    if-nez v7, :cond_4

    .line 1405
    const/4 v3, 0x0

    .line 1407
    :cond_4
    instance-of v7, v0, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    if-eqz v7, :cond_5

    .line 1408
    const/4 v1, 0x1

    .line 1410
    :cond_5
    instance-of v7, v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    if-eqz v7, :cond_2

    .line 1411
    const/4 v2, 0x1

    goto :goto_0

    .line 1414
    .end local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_6
    if-eqz v3, :cond_8

    if-ne v5, v8, :cond_8

    .line 1415
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1416
    .restart local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v7, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    if-eqz v7, :cond_7

    .line 1417
    check-cast v0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    .end local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    iput-boolean v8, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->isSingle:Z

    goto :goto_1

    .line 1421
    :cond_8
    invoke-static {}, Lcom/vkcoffee/android/NewsEntry;->getMaxThumbsWidth()I

    move-result v4

    .line 1422
    .local v4, "tSize":I
    invoke-static {v4, v4, p0}, Lcom/vkcoffee/android/ZhukovLayout;->processThumbs(IILjava/util/List;)V

    .line 1423
    if-nez v1, :cond_9

    if-eqz v2, :cond_0

    .line 1424
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1425
    .restart local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v7, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v7, :cond_a

    .line 1426
    check-cast v0, Lcom/vkcoffee/android/attachments/GeoAttachment;

    .end local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    iput v8, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    goto :goto_2
.end method

.method public static parseAd(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/Vector;)Lcom/vkcoffee/android/NewsEntry;
    .locals 7
    .param p0, "obj"    # Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/vkcoffee/android/NewsEntry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "userNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p2, "userPhotos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p3, "userSex":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local p4, "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 708
    const-string/jumbo v3, "ads"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 709
    .local v1, "o":Lorg/json/JSONObject;
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 710
    const-string/jumbo v2, "vk"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :goto_0
    return-object v0

    .line 713
    :cond_0
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 716
    :pswitch_0
    invoke-static {p0}, Lcom/vkcoffee/android/NewsEntry;->parseAdApp(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    goto :goto_0

    .line 713
    :sswitch_0
    const-string/jumbo v5, "site"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "app"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "post"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    .line 718
    :pswitch_1
    const-string/jumbo v0, "post"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/vkcoffee/android/NewsEntry;->parseAdPost(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/Vector;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    goto :goto_0

    .line 713
    nop

    :sswitch_data_0
    .sparse-switch
        0x17a21 -> :sswitch_1
        0x3498a0 -> :sswitch_2
        0x35df47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseAdApp(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;
    .locals 18
    .param p0, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 758
    new-instance v17, Lorg/json/JSONArray;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v4, "ads_stoplist"

    const-string/jumbo v5, "[]"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 759
    .local v17, "stoplist":Lorg/json/JSONArray;
    new-instance v10, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v10}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 760
    .local v10, "e":Lcom/vkcoffee/android/NewsEntry;
    const/16 v2, 0xb

    iput v2, v10, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 761
    const-string/jumbo v2, "ads_id1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 762
    const-string/jumbo v2, "ads_id2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcom/vkcoffee/android/NewsEntry;->userID:I

    iput v2, v10, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 763
    iget-object v2, v10, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v4, "ads_title"

    const-string/jumbo v5, "ads_title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string/jumbo v2, "ads_debug"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 766
    iget-object v2, v10, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v4, "ads_debug"

    const-string/jumbo v5, "ads_debug"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_0
    const-string/jumbo v2, "ads"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 770
    .local v9, "ads":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_1

    .line 771
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 772
    .local v15, "o":Lorg/json/JSONObject;
    new-instance v8, Lcom/vkcoffee/android/attachments/ShitAttachment;

    invoke-direct {v8}, Lcom/vkcoffee/android/attachments/ShitAttachment;-><init>()V

    .line 773
    .local v8, "ad":Lcom/vkcoffee/android/attachments/ShitAttachment;
    iget-object v2, v10, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v4, "age_restriction"

    const-string/jumbo v5, "age_restriction"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string/jumbo v2, "description"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->text:Ljava/lang/String;

    .line 776
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 778
    :try_start_0
    iget-object v2, v10, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 779
    const-string/jumbo v2, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skipping bad ad: stoplist entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " matched"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    const/4 v10, 0x0

    .line 840
    .end local v8    # "ad":Lcom/vkcoffee/android/attachments/ShitAttachment;
    .end local v10    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v11    # "i":I
    .end local v15    # "o":Lorg/json/JSONObject;
    :cond_1
    return-object v10

    .line 782
    .restart local v8    # "ad":Lcom/vkcoffee/android/attachments/ShitAttachment;
    .restart local v10    # "e":Lcom/vkcoffee/android/NewsEntry;
    .restart local v11    # "i":I
    .restart local v15    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 776
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 786
    :cond_3
    sget v2, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    const-string/jumbo v2, "photo_100"

    :goto_2
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->userPhoto:Ljava/lang/String;

    .line 787
    const-string/jumbo v2, "title"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->userName:Ljava/lang/String;

    .line 788
    const-string/jumbo v2, "genre"

    const-string/jumbo v4, "domain"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->genre:Ljava/lang/String;

    .line 789
    const-string/jumbo v2, "time_to_live"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->timeToLive:I

    .line 790
    iget v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->timeToLive:I

    if-eqz v2, :cond_4

    iget v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->timeToLive:I

    const v4, 0x278d00

    if-ge v2, v4, :cond_4

    .line 791
    iget v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->timeToLive:I

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->timeToLive:I

    .line 793
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 794
    .local v3, "images":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;>;"
    const-string/jumbo v2, "photo_main"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 795
    .local v16, "sizes":Lorg/json/JSONArray;
    const/4 v11, 0x0

    :goto_3
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v11, v2, :cond_6

    .line 796
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 797
    .local v14, "ji":Lorg/json/JSONObject;
    new-instance v12, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    invoke-direct {v12}, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;-><init>()V

    .line 798
    .local v12, "img":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    const-string/jumbo v2, "width"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v12, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    .line 799
    const-string/jumbo v2, "height"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v12, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    .line 800
    const-string/jumbo v2, "type"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, v12, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->type:C

    .line 801
    const-string/jumbo v2, "src"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v4, v12, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->type:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 786
    .end local v3    # "images":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;>;"
    .end local v12    # "img":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    .end local v14    # "ji":Lorg/json/JSONObject;
    .end local v16    # "sizes":Lorg/json/JSONArray;
    :cond_5
    const-string/jumbo v2, "photo_50"

    goto/16 :goto_2

    .line 804
    .restart local v3    # "images":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;>;"
    .restart local v16    # "sizes":Lorg/json/JSONArray;
    :cond_6
    new-instance v2, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, ""

    invoke-direct/range {v2 .. v7}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Ljava/util/HashMap;IIILjava/lang/String;)V

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->photo:Lcom/vkcoffee/android/attachments/PhotoAttachment;

    .line 805
    const-string/jumbo v2, "age_restriction"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->ageRestriction:Ljava/lang/String;

    .line 806
    const-string/jumbo v2, "button"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->buttonText:Ljava/lang/String;

    .line 807
    const-string/jumbo v2, "followers"

    const-string/jumbo v4, "site_description"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->followers:Ljava/lang/String;

    .line 808
    const-string/jumbo v2, "link_url"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->link:Ljava/lang/String;

    .line 809
    const-string/jumbo v2, "link_url_target"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_7
    :goto_4
    packed-switch v2, :pswitch_data_0

    .line 818
    const/4 v2, 0x0

    iput v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->linkTarget:I

    .line 821
    :goto_5
    const-string/jumbo v2, "rating"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v2, v4

    iput v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->rating:F

    .line 822
    const-string/jumbo v2, "button_open"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->buttonTextInstalled:Ljava/lang/String;

    .line 823
    const-string/jumbo v2, "ad_data"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    .line 824
    const-string/jumbo v2, "ad_data_impression"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->dataImpression:Ljava/lang/String;

    .line 825
    const-string/jumbo v2, "android_app"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 826
    const-string/jumbo v2, "android_app"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "app_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->appPackage:Ljava/lang/String;

    .line 827
    const-string/jumbo v2, "android_app"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "open_url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->deepLink:Ljava/lang/String;

    .line 829
    :cond_8
    if-nez v13, :cond_9

    .line 830
    const-string/jumbo v2, "ads_statistics"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8}, Lcom/vkcoffee/android/NewsEntry;->parseStatistics(Lorg/json/JSONObject;Ljava/lang/String;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    .line 832
    :cond_9
    const-string/jumbo v2, "statistics"

    invoke-static {v15, v2, v8}, Lcom/vkcoffee/android/NewsEntry;->parseStatistics(Lorg/json/JSONObject;Ljava/lang/String;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    .line 834
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    .line 835
    iget-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->text:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string/jumbo v2, ""

    :goto_6
    iput-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->text:Ljava/lang/String;

    .line 837
    iget-object v2, v10, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 809
    :sswitch_0
    const-string/jumbo v5, "internal_hidden"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x0

    goto/16 :goto_4

    :sswitch_1
    const-string/jumbo v5, "internal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x1

    goto/16 :goto_4

    :sswitch_2
    const-string/jumbo v5, "external"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x2

    goto/16 :goto_4

    .line 811
    :pswitch_0
    const/4 v2, 0x1

    iput v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->linkTarget:I

    goto/16 :goto_5

    .line 814
    :pswitch_1
    const/4 v2, 0x2

    iput v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->linkTarget:I

    goto/16 :goto_5

    .line 835
    :cond_a
    iget-object v2, v8, Lcom/vkcoffee/android/attachments/ShitAttachment;->text:Ljava/lang/String;

    goto :goto_6

    .line 809
    :sswitch_data_0
    .sparse-switch
        -0x6c869c35 -> :sswitch_2
        -0x5c0dca94 -> :sswitch_0
        0x21ffc6bd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseAdPost(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/Vector;)Lcom/vkcoffee/android/NewsEntry;
    .locals 5
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "oAd"    # Lorg/json/JSONObject;
    .param p2, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/vkcoffee/android/NewsEntry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 731
    .local p3, "userNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p4, "userPhotos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p5, "userSex":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local p6, "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 732
    .local v1, "e":Lcom/vkcoffee/android/NewsEntry;
    iget-object v2, v1, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v3, "ads_title"

    const-string/jumbo v4, "ads_title"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v2, v1, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v3, "age_restriction"

    const-string/jumbo v4, "age_restriction"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget v2, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-gez v2, :cond_0

    iget v2, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p6, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    iget v2, v1, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 737
    :cond_0
    const/16 v2, 0xc

    iput v2, v1, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 739
    const-string/jumbo v2, "time_to_live"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    .line 740
    iget v2, v1, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    const v3, 0x278d00

    if-ge v2, v3, :cond_1

    .line 741
    iget v2, v1, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    .line 743
    :cond_1
    const-string/jumbo v2, "ads_debug"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 744
    iget-object v2, v1, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v3, "ads_debug"

    const-string/jumbo v4, "ads_debug"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_2
    new-instance v0, Lcom/vkcoffee/android/attachments/ShitAttachment;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/ShitAttachment;-><init>()V

    .line 748
    .local v0, "ad":Lcom/vkcoffee/android/attachments/ShitAttachment;
    const-string/jumbo v2, "ad_data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    .line 749
    const-string/jumbo v2, "ad_data_impression"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->dataImpression:Ljava/lang/String;

    .line 750
    const-string/jumbo v2, "ads_statistics"

    invoke-static {p0, v2, v0}, Lcom/vkcoffee/android/NewsEntry;->parseStatistics(Lorg/json/JSONObject;Ljava/lang/String;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    .line 751
    const-string/jumbo v2, "statistics"

    invoke-static {p1, v2, v0}, Lcom/vkcoffee/android/NewsEntry;->parseStatistics(Lorg/json/JSONObject;Ljava/lang/String;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    .line 753
    iget-object v2, v1, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    return-object v1
.end method

.method public static parseFriendsRecomm(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;
    .locals 7
    .param p0, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 688
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 689
    .local v0, "e":Lcom/vkcoffee/android/NewsEntry;
    const v4, 0x77359400

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 690
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 691
    const/16 v4, 0xd

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 692
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v4, "profiles"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 694
    .local v2, "ja":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 695
    new-instance v4, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    :cond_0
    const-string/jumbo v4, "date"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 698
    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v5, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;

    const-string/jumbo v6, "next_from"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    return-object v0
.end method

.method public static parseMarket(Lorg/json/JSONObject;Lcom/vkcoffee/android/NewsEntry;)Lcom/vkcoffee/android/NewsEntry;
    .locals 3
    .param p0, "market"    # Lorg/json/JSONObject;
    .param p1, "e"    # Lcom/vkcoffee/android/NewsEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 657
    if-nez p1, :cond_0

    new-instance p1, Lcom/vkcoffee/android/NewsEntry;

    .end local p1    # "e":Lcom/vkcoffee/android/NewsEntry;
    invoke-direct {p1}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 658
    .restart local p1    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_0
    const/16 v1, 0x12

    iput v1, p1, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 659
    new-instance v0, Lcom/vkcoffee/android/data/Good;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/data/Good;-><init>(Lorg/json/JSONObject;)V

    .line 660
    .local v0, "good":Lcom/vkcoffee/android/data/Good;
    iget v1, v0, Lcom/vkcoffee/android/data/Good;->id:I

    iput v1, p1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 661
    iget v1, v0, Lcom/vkcoffee/android/data/Good;->owner_id:I

    iput v1, p1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    iput v1, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 662
    iget v1, v0, Lcom/vkcoffee/android/data/Good;->date:I

    iput v1, p1, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 663
    iget-object v1, p1, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkcoffee/android/attachments/MarketAttachment;

    invoke-direct {v2, v0}, Lcom/vkcoffee/android/attachments/MarketAttachment;-><init>(Lcom/vkcoffee/android/data/Good;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v1, v0, Lcom/vkcoffee/android/data/Good;->title:Ljava/lang/String;

    iput-object v1, p1, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 665
    return-object p1
.end method

.method public static parsePhoto(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;
    .locals 4
    .param p0, "photo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 639
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 640
    .local v0, "e":Lcom/vkcoffee/android/NewsEntry;
    iput v3, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 641
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "id"

    :goto_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 642
    const-string/jumbo v1, "owner_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 643
    const-string/jumbo v1, "text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 644
    const-string/jumbo v1, "date"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 645
    const-string/jumbo v1, "likes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    const-string/jumbo v1, "likes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 647
    const-string/jumbo v1, "likes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "user_likes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 648
    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 651
    :cond_0
    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 652
    iget-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    new-instance v3, Lcom/vkcoffee/android/Photo;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Lcom/vkcoffee/android/Photo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    return-object v0

    .line 641
    :cond_1
    const-string/jumbo v1, "pid"

    goto :goto_0
.end method

.method private static parseStatistics(Lorg/json/JSONObject;Ljava/lang/String;Lcom/vkcoffee/android/attachments/ShitAttachment;)V
    .locals 7
    .param p0, "obj"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ad"    # Lcom/vkcoffee/android/attachments/ShitAttachment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 844
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 845
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 846
    .local v2, "stats":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 847
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 848
    .local v1, "s":Lorg/json/JSONObject;
    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 849
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 846
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 849
    :sswitch_0
    const-string/jumbo v6, "load"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "impression"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "click"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "click_deeplink"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    .line 851
    :pswitch_0
    iget-object v4, p2, Lcom/vkcoffee/android/attachments/ShitAttachment;->statLoadURLs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 854
    :pswitch_1
    iget-object v4, p2, Lcom/vkcoffee/android/attachments/ShitAttachment;->statImpressionURLs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 857
    :pswitch_2
    iget-object v4, p2, Lcom/vkcoffee/android/attachments/ShitAttachment;->statClickURLs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 860
    :pswitch_3
    iget-object v4, p2, Lcom/vkcoffee/android/attachments/ShitAttachment;->statDeeplinkClickURLs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 865
    .end local v0    # "i":I
    .end local v1    # "s":Lorg/json/JSONObject;
    .end local v2    # "stats":Lorg/json/JSONArray;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    return-void

    .line 849
    :sswitch_data_0
    .sparse-switch
        -0x60d8443 -> :sswitch_3
        0x32c4e6 -> :sswitch_0
        0x5a5c588 -> :sswitch_2
        0x7309209 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static parseTopic(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;
    .locals 2
    .param p0, "topic"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 679
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 680
    .local v0, "e":Lcom/vkcoffee/android/NewsEntry;
    const/4 v1, 0x4

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 681
    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 682
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 683
    const-string/jumbo v1, "owner_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 684
    return-object v0
.end method

.method public static parseVideo(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;
    .locals 10
    .param p0, "video"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 669
    new-instance v8, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v8}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 670
    .local v8, "e":Lcom/vkcoffee/android/NewsEntry;
    const/4 v0, 0x2

    iput v0, v8, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 671
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "id"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v8, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 672
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v8, Lcom/vkcoffee/android/NewsEntry;->userID:I

    iput v0, v8, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 673
    const-string/jumbo v0, "date"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v8, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 674
    iget-object v9, v8, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "photo_320"

    const-string/jumbo v3, "image"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "owner_id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "id"

    :goto_1
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "duration"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "access_key"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "views"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    return-object v8

    .line 671
    :cond_0
    const-string/jumbo v0, "vid"

    goto :goto_0

    .line 674
    :cond_1
    const-string/jumbo v4, "vid"

    goto :goto_1
.end method

.method private serializeAttachments()[B
    .locals 6

    .prologue
    .line 1058
    iget-object v4, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1059
    const/4 v4, 0x0

    .line 1076
    :goto_0
    return-object v4

    .line 1061
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1062
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1064
    .local v2, "os":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1065
    iget-object v4, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1066
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/attachments/Attachment;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1073
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :catch_0
    move-exception v3

    .line 1074
    .local v3, "x":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 1076
    .end local v3    # "x":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 1068
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1069
    iget-object v4, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1070
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/attachments/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    goto :goto_3

    .line 1072
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private serializeExtras()Ljava/lang/String;
    .locals 7

    .prologue
    .line 946
    iget-object v5, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 947
    :cond_0
    const-string/jumbo v5, ""

    .line 964
    :goto_0
    return-object v5

    .line 950
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 951
    .local v3, "obj":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 952
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 953
    .local v0, "k":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 954
    .local v2, "o":Ljava/lang/Object;
    instance-of v6, v2, Lcom/vkcoffee/android/utils/JSONSerializable;

    if-eqz v6, :cond_2

    .line 955
    check-cast v2, Lcom/vkcoffee/android/utils/JSONSerializable;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/JSONSerializable$Factory;->to(Lcom/vkcoffee/android/utils/JSONSerializable;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 961
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 962
    .local v4, "x":Lorg/json/JSONException;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 964
    const-string/jumbo v5, ""

    goto :goto_0

    .line 957
    .end local v4    # "x":Lorg/json/JSONException;
    .restart local v0    # "k":Ljava/lang/String;
    .restart local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 960
    .end local v0    # "k":Ljava/lang/String;
    .end local v2    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0
.end method

.method private setInfoFromPostSource(Lorg/json/JSONObject;Z)V
    .locals 5
    .param p1, "source"    # Lorg/json/JSONObject;
    .param p2, "ff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 595
    const-string/jumbo v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "profile_photo"

    const-string/jumbo v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-gez v2, :cond_2

    .line 597
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080564

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 601
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 603
    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 604
    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 607
    :cond_0
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "ptype":Ljava/lang/String;
    const-string/jumbo v2, "api"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 609
    const-string/jumbo v2, "platform"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "jplatform":Ljava/lang/String;
    const-string/jumbo v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 611
    const/4 v2, 0x2

    iput v2, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    .line 636
    .end local v0    # "jplatform":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 599
    .end local v1    # "ptype":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_3

    const v2, 0x7f080563

    :goto_2
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const v2, 0x7f080565

    goto :goto_2

    .line 612
    .restart local v0    # "jplatform":Ljava/lang/String;
    .restart local v1    # "ptype":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "iphone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 613
    const/4 v2, 0x3

    iput v2, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    goto :goto_1

    .line 614
    :cond_5
    const-string/jumbo v2, "ipad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 615
    const/4 v2, 0x4

    iput v2, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    goto :goto_1

    .line 616
    :cond_6
    const-string/jumbo v2, "wphone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 617
    const/4 v2, 0x5

    iput v2, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    goto :goto_1

    .line 618
    :cond_7
    const-string/jumbo v2, "windows"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 619
    const/4 v2, 0x6

    iput v2, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    goto :goto_1

    .line 620
    :cond_8
    const-string/jumbo v2, "instagram"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 621
    const/16 v2, 0x8

    iput v2, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    .line 622
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 623
    iget-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v3, "post_source_url"

    const-string/jumbo v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_9
    iget-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/GeoAttachment;

    const/4 v3, 0x1

    iput v3, v2, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    goto/16 :goto_1

    .line 628
    :cond_a
    const-string/jumbo v2, "chronicle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 629
    const/16 v2, 0x9

    iput v2, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    goto/16 :goto_1

    .line 630
    :cond_b
    const-string/jumbo v2, "prisma"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 631
    const/16 v2, 0xa

    iput v2, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    goto/16 :goto_1

    .line 633
    :cond_c
    const/4 v2, 0x7

    iput v2, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    goto/16 :goto_1
.end method

.method public static stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 11
    .param p0, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v8, 0x0

    .line 1291
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {p0, v8, v7, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    .line 1292
    .local v5, "spans":[Landroid/text/style/URLSpan;
    array-length v9, v5

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v3, v5, v7

    .line 1293
    .local v3, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1294
    .local v6, "start":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1295
    .local v2, "end":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1296
    new-instance v4, Lcom/vkcoffee/android/NewsEntry$URLSpanNoUnderline;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/vkcoffee/android/NewsEntry$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 1297
    .end local v3    # "span":Landroid/text/style/URLSpan;
    .local v4, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v4, v6, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1292
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1299
    .end local v2    # "end":I
    .end local v4    # "span":Landroid/text/style/URLSpan;
    .end local v6    # "start":I
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v9, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p0, v8, v7, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    .line 1300
    .local v1, "aspans":[Landroid/text/style/ForegroundColorSpan;
    array-length v9, v1

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v3, v1, v7

    .line 1301
    .local v3, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1302
    .restart local v6    # "start":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1303
    .restart local v2    # "end":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1304
    new-instance v0, Lcom/vkcoffee/android/NewsEntry$XColorSpan;

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v10

    invoke-direct {v0, v10}, Lcom/vkcoffee/android/NewsEntry$XColorSpan;-><init>(I)V

    .line 1305
    .local v0, "as":Lcom/vkcoffee/android/NewsEntry$XColorSpan;
    invoke-interface {p0, v0, v6, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1300
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1307
    .end local v0    # "as":Lcom/vkcoffee/android/NewsEntry$XColorSpan;
    .end local v2    # "end":I
    .end local v3    # "span":Landroid/text/style/ForegroundColorSpan;
    .end local v6    # "start":I
    :cond_1
    return-object p0
.end method


# virtual methods
.method public equals(Lcom/vkcoffee/android/NewsEntry;)Z
    .locals 2
    .param p1, "e"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 1245
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->type:I

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flag(IZ)V
    .locals 2
    .param p1, "f"    # I
    .param p2, "v"    # Z

    .prologue
    .line 1237
    if-eqz p2, :cond_0

    .line 1238
    iget v0, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 1242
    :goto_0
    return-void

    .line 1240
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    goto :goto_0
.end method

.method public flag(I)Z
    .locals 1
    .param p1, "f"    # I

    .prologue
    .line 1233
    iget v0, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageAttachment(I)Lcom/vkcoffee/android/attachments/ImageAttachment;
    .locals 4
    .param p1, "idx"    # I

    .prologue
    .line 1212
    const/4 v1, 0x0

    .line 1213
    .local v1, "cnt":I
    iget-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1214
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v3, :cond_0

    .line 1215
    if-ne v1, p1, :cond_1

    .line 1216
    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    .line 1229
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :goto_1
    return-object v0

    .line 1218
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1221
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1222
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v3, :cond_3

    .line 1223
    if-ne v1, p1, :cond_4

    .line 1224
    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    goto :goto_1

    .line 1226
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1229
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getImageCount()I
    .locals 4

    .prologue
    .line 1197
    const/4 v1, 0x0

    .line 1198
    .local v1, "cnt":I
    iget-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1199
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v3, :cond_0

    .line 1200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1203
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1204
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v3, :cond_2

    .line 1205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1208
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_3
    return v1
.end method

.method public getPlatformIconResource()I
    .locals 2

    .prologue
    .line 1029
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    packed-switch v1, :pswitch_data_0

    .line 1051
    :pswitch_0
    const v0, 0x7f0201cb

    .line 1054
    .local v0, "platformIcon":I
    :goto_0
    return v0

    .line 1031
    .end local v0    # "platformIcon":I
    :pswitch_1
    const v0, 0x7f0201c7

    .line 1032
    .restart local v0    # "platformIcon":I
    goto :goto_0

    .line 1035
    .end local v0    # "platformIcon":I
    :pswitch_2
    const v0, 0x7f0201c9

    .line 1036
    .restart local v0    # "platformIcon":I
    goto :goto_0

    .line 1039
    .end local v0    # "platformIcon":I
    :pswitch_3
    const v0, 0x7f0201cd

    .line 1040
    .restart local v0    # "platformIcon":I
    goto :goto_0

    .line 1042
    .end local v0    # "platformIcon":I
    :pswitch_4
    const v0, 0x7f0201cc

    .line 1043
    .restart local v0    # "platformIcon":I
    goto :goto_0

    .line 1045
    .end local v0    # "platformIcon":I
    :pswitch_5
    const v0, 0x7f0201c8

    .line 1046
    .restart local v0    # "platformIcon":I
    goto :goto_0

    .line 1048
    .end local v0    # "platformIcon":I
    :pswitch_6
    const v0, 0x7f0201ca

    .line 1049
    .restart local v0    # "platformIcon":I
    goto :goto_0

    .line 1029
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public getRepostTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1273
    iget v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    packed-switch v0, :pswitch_data_0

    .line 1286
    const-string/jumbo v0, "wall"

    :goto_0
    return-object v0

    .line 1275
    :pswitch_0
    const-string/jumbo v0, "wallreply"

    goto :goto_0

    .line 1277
    :pswitch_1
    const-string/jumbo v0, "note"

    goto :goto_0

    .line 1279
    :pswitch_2
    const-string/jumbo v0, "photo"

    goto :goto_0

    .line 1281
    :pswitch_3
    const-string/jumbo v0, "topic"

    goto :goto_0

    .line 1283
    :pswitch_4
    const-string/jumbo v0, "video"

    goto :goto_0

    .line 1273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1255
    iget v0, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    packed-switch v0, :pswitch_data_0

    .line 1268
    const-string/jumbo v0, "wall"

    :goto_0
    return-object v0

    .line 1257
    :pswitch_0
    const-string/jumbo v0, "wallreply"

    goto :goto_0

    .line 1259
    :pswitch_1
    const-string/jumbo v0, "note"

    goto :goto_0

    .line 1261
    :pswitch_2
    const-string/jumbo v0, "photo"

    goto :goto_0

    .line 1263
    :pswitch_3
    const-string/jumbo v0, "topic"

    goto :goto_0

    .line 1265
    :pswitch_4
    const-string/jumbo v0, "video"

    goto :goto_0

    .line 1255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public layoutThumbs()V
    .locals 3

    .prologue
    .line 1379
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/vkcoffee/android/NewsEntry;->layoutThumbs(Ljava/util/List;)V

    .line 1380
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/vkcoffee/android/NewsEntry;->layoutThumbs(Ljava/util/List;)V

    .line 1381
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1382
    .local v0, "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v2, v0, Lcom/vkcoffee/android/attachments/PollAttachment;

    if-eqz v2, :cond_0

    .line 1383
    check-cast v0, Lcom/vkcoffee/android/attachments/PollAttachment;

    .end local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    iput-object p0, v0, Lcom/vkcoffee/android/attachments/PollAttachment;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    goto :goto_0

    .line 1386
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1387
    .restart local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v2, v0, Lcom/vkcoffee/android/attachments/PollAttachment;

    if-eqz v2, :cond_2

    .line 1388
    check-cast v0, Lcom/vkcoffee/android/attachments/PollAttachment;

    .end local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    iput-object p0, v0, Lcom/vkcoffee/android/attachments/PollAttachment;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    goto :goto_1

    .line 1391
    :cond_3
    return-void
.end method

.method public readFromSQLite(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1117
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1118
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 1119
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 1120
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 1121
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 1122
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 1123
    const-string/jumbo v1, "likes"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 1124
    const-string/jumbo v1, "retweets"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 1126
    const-string/jumbo v1, "comments"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 1127
    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 1128
    const-string/jumbo v1, "userphoto"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 1132
    const-string/jumbo v1, "attachments"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/NewsEntry;->deserializeAttachments([B)V

    .line 1133
    const-string/jumbo v1, "flags"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 1135
    const-string/jumbo v1, "retweet_uid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    .line 1136
    const-string/jumbo v1, "retweet_username"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 1137
    const-string/jumbo v1, "retweet_text"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 1138
    const-string/jumbo v1, "retweet_user_photo"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 1139
    const-string/jumbo v1, "retweet_orig_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    .line 1140
    const-string/jumbo v1, "retweet_orig_time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    .line 1141
    const-string/jumbo v1, "retweet_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    .line 1143
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    shr-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 1145
    const-string/jumbo v1, "last_comment_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1146
    const-string/jumbo v1, "last_comment_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    .line 1147
    const-string/jumbo v1, "last_comment_photo"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    .line 1148
    const-string/jumbo v1, "last_comment_text"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    .line 1149
    const-string/jumbo v1, "last_comment_time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->lastCommentTime:I

    .line 1151
    :cond_0
    const-string/jumbo v1, "created_by"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->createdBy:I

    .line 1152
    const-string/jumbo v1, "platform"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    .line 1154
    const-string/jumbo v1, "extra"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/NewsEntry;->deserializeExtras(Ljava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v2, "converted_to_photo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1156
    const/4 v1, 0x1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 1159
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/NewsEntry;->layoutThumbs()V

    .line 1161
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080179

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <a href=\'http://vk.com\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Lcom/vkcoffee/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 1163
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 1168
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1169
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 1172
    :cond_2
    const-string/jumbo v1, "order_position"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/NewsEntry;->order_position:I

    .line 1173
    return-void

    .line 1165
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 3
    .param p1, "out"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    const/4 v2, -0x1

    .line 969
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 970
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 971
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 972
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 973
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 974
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 975
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->time:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 976
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 977
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 978
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 979
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 980
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 981
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachType:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 982
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 983
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 984
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 985
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 986
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 987
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 988
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 989
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 990
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->createdBy:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 991
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 993
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 994
    invoke-virtual {p1, v2}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1003
    invoke-virtual {p1, v2}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 1011
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeBundle(Landroid/os/Bundle;)V

    .line 1013
    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->order_position:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 1014
    return-void

    .line 996
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 997
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 998
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/utils/Serializer$Serializable;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeSerializable(Lcom/vkcoffee/android/utils/Serializer$Serializable;)V

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1005
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 1006
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1007
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/utils/Serializer$Serializable;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeSerializable(Lcom/vkcoffee/android/utils/Serializer$Serializable;)V

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xc8

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NewsEntry {id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/NewsEntry;->ell(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", repostText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/NewsEntry;->ell(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", attachments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", repostAttachments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRetweetText()V
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v0}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    .line 1252
    :cond_0
    return-void
.end method

.method public writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1080
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1081
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "pid"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    const-string/jumbo v1, "uid"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1083
    const-string/jumbo v1, "text"

    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string/jumbo v1, "time"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->time:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1085
    const-string/jumbo v1, "likes"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1086
    const-string/jumbo v1, "comments"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1087
    const-string/jumbo v1, "username"

    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string/jumbo v1, "userphoto"

    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string/jumbo v1, "retweet_uid"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1090
    const-string/jumbo v1, "retweet_username"

    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string/jumbo v3, "attachments"

    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/NewsEntry;->serializeAttachments()[B

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1092
    const-string/jumbo v1, "flags"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    iget v4, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1093
    const-string/jumbo v1, "retweet_text"

    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const-string/jumbo v1, "retweets"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1095
    const-string/jumbo v1, "retweet_user_photo"

    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const-string/jumbo v1, "retweet_orig_id"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1097
    const-string/jumbo v1, "retweet_orig_time"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1098
    const-string/jumbo v1, "retweet_type"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1099
    const-string/jumbo v1, "created_by"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->createdBy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1100
    const-string/jumbo v1, "platform"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->platform:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1101
    const-string/jumbo v1, "extra"

    invoke-direct {p0}, Lcom/vkcoffee/android/NewsEntry;->serializeExtras()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v1, p0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1103
    const-string/jumbo v1, "last_comment_name"

    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string/jumbo v1, "last_comment_photo"

    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-string/jumbo v1, "last_comment_text"

    iget-object v3, p0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const-string/jumbo v1, "last_comment_time"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->lastCommentTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1108
    :cond_1
    const-string/jumbo v1, "order_position"

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->order_position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1111
    invoke-virtual {p1, p2, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1112
    return-void

    :cond_2
    move-object v1, v2

    .line 1091
    goto/16 :goto_0
.end method
