.class public Lcom/vkcoffee/android/api/ExtendedUserProfile;
.super Ljava/lang/Object;
.source "ExtendedUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;,
        Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;,
        Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;,
        Lcom/vkcoffee/android/api/ExtendedUserProfile$Contact;,
        Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;,
        Lcom/vkcoffee/android/api/ExtendedUserProfile$University;,
        Lcom/vkcoffee/android/api/ExtendedUserProfile$School;
    }
.end annotation


# static fields
.field public static final ACCESS_CLOSED:I = 0x1

.field public static final ACCESS_OPEN:I = 0x0

.field public static final ACCESS_PRIVATE:I = 0x2

.field public static final FRIEND_STATUS_FRIENDS:I = 0x3

.field public static final FRIEND_STATUS_NONE:I = 0x0

.field public static final FRIEND_STATUS_RECV_REQUEST:I = 0x2

.field public static final FRIEND_STATUS_SENT_REQUEST:I = 0x1

.field public static final GROUP_STATUS_DECLINED_INVITE:I = 0x3

.field public static final GROUP_STATUS_INVITED:I = 0x5

.field public static final GROUP_STATUS_MEMBER:I = 0x1

.field public static final GROUP_STATUS_NONE:I = 0x0

.field public static final GROUP_STATUS_NOT_SURE:I = 0x2

.field public static final GROUP_STATUS_SENT_REQUEST:I = 0x4

.field public static final MAIN_SECTION_AUDIO:I = 0x3

.field public static final MAIN_SECTION_BOARD:I = 0x2

.field public static final MAIN_SECTION_MARKET:I = 0x5

.field public static final MAIN_SECTION_NONE:I = 0x0

.field public static final MAIN_SECTION_PHOTOS:I = 0x1

.field public static final MAIN_SECTION_VIDEO:I = 0x4

.field public static final TYPE_EVENT:I = 0x1

.field public static final TYPE_GROUP:I = 0x0

.field public static final TYPE_PUBLIC:I = 0x2


# instance fields
.field public about:Ljava/lang/String;

.field public activities:Ljava/lang/String;

.field public activity:Ljava/lang/String;

.field public adminLevel:I

.field public alcohol:I

.field public allPhotosAreHidden:Z

.field public audioStatus:Lcom/vkcoffee/android/AudioFile;

.field public audios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field public bDay:I

.field public bMonth:I

.field public bYear:I

.field public ban:Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;

.field public bigPhoto:Ljava/lang/String;

.field public blacklisted:Z

.field public books:Ljava/lang/String;

.field public canCall:Z

.field public canPost:Z

.field public canSeeAllPosts:Z

.field public canSendFriendRequest:Z

.field public canUploadVideo:Z

.field public canWrite:Z

.field public career:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;",
            ">;"
        }
    .end annotation
.end field

.field public city:Ljava/lang/String;

.field public contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/ExtendedUserProfile$Contact;",
            ">;"
        }
    .end annotation
.end field

.field public counters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public country:Ljava/lang/String;

.field public deactivated:Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

.field public displayFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public docs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;"
        }
    .end annotation
.end field

.field public eventEndTime:I

.field public eventStartTime:I

.field public facebookId:J

.field public facebookName:Ljava/lang/String;

.field public firstNameAcc:Ljava/lang/String;

.field public firstNameDat:Ljava/lang/String;

.field public firstNameGen:Ljava/lang/String;

.field public firstNameIns:Ljava/lang/String;

.field public friendStatus:I

.field public friends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field public games:Ljava/lang/String;

.field public gifts:Lcom/vkcoffee/android/data/VKList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/models/GiftItem;",
            ">;"
        }
    .end annotation
.end field

.field public goods:Lcom/vkcoffee/android/data/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/data/Good;",
            ">;"
        }
    .end annotation
.end field

.field public groupAccess:I

.field public groupType:I

.field public groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field public hasPhoto:Z

.field public homePhone:Ljava/lang/String;

.field public hometown:Ljava/lang/String;

.field public infoLine:Ljava/lang/String;

.field public inspiredBy:Ljava/lang/String;

.field public instagram:Ljava/lang/String;

.field public interests:Ljava/lang/String;

.field public invitedBy:Lcom/vkcoffee/android/UserProfile;

.field public isFavorite:Z

.field public isHiddenFromFeed:Z

.field public isSubscribed:Z

.field public langs:Ljava/lang/String;

.field public lastNameAcc:Ljava/lang/String;

.field public lastNameDat:Ljava/lang/String;

.field public lastNameGen:Ljava/lang/String;

.field public lastNameIns:Ljava/lang/String;

.field public lastSeen:I

.field public lastSeenMobile:Z

.field public lat:D

.field public lifeMain:I

.field public links:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;",
            ">;"
        }
    .end annotation
.end field

.field public livejournal:Ljava/lang/String;

.field public lon:D

.field public mainAlbum:Lcom/vkcoffee/android/api/PhotoAlbum;

.field public mainSection:I

.field public marketMainAlbumId:I

.field public marketWiki:Lcom/vkcoffee/android/data/Wiki;

.field public mobilePhone:Ljava/lang/String;

.field public movies:Ljava/lang/String;

.field public music:Ljava/lang/String;

.field public peopleMain:I

.field public photo:Lcom/vkcoffee/android/Photo;

.field public photoRect:Landroid/graphics/RectF;

.field public photos:Lcom/vkcoffee/android/data/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field public political:I

.field public postponedCount:I

.field public profile:Lcom/vkcoffee/android/UserProfile;

.field public quotations:Ljava/lang/String;

.field public relation:I

.field public relationPartner:I

.field public relationPartnerName:Ljava/lang/String;

.field public relativesChild:[Lcom/vkcoffee/android/UserProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public relativesGrandchild:[Lcom/vkcoffee/android/UserProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public relativesGrandparent:[Lcom/vkcoffee/android/UserProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public relativesParents:[Lcom/vkcoffee/android/UserProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public relativesSibling:[Lcom/vkcoffee/android/UserProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public religion:Ljava/lang/String;

.field public schools:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/ExtendedUserProfile$School;",
            ">;"
        }
    .end annotation
.end field

.field public screenName:Ljava/lang/String;

.field public showAllPosts:Z

.field public skype:Ljava/lang/String;

.field public smoking:I

.field public subscriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field public suggestedCount:I

.field public topics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/BoardTopic;",
            ">;"
        }
    .end annotation
.end field

.field public tv:Ljava/lang/String;

.field public twitter:Ljava/lang/String;

.field public universities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/ExtendedUserProfile$University;",
            ">;"
        }
    .end annotation
.end field

.field public verified:Z

.field public videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/VideoFile;",
            ">;"
        }
    .end annotation
.end field

.field public website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relativesParents:[Lcom/vkcoffee/android/UserProfile;

    .line 66
    iput-object v0, p0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relativesSibling:[Lcom/vkcoffee/android/UserProfile;

    .line 68
    iput-object v0, p0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relativesChild:[Lcom/vkcoffee/android/UserProfile;

    .line 70
    iput-object v0, p0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relativesGrandparent:[Lcom/vkcoffee/android/UserProfile;

    .line 72
    iput-object v0, p0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relativesGrandchild:[Lcom/vkcoffee/android/UserProfile;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->marketMainAlbumId:I

    .line 185
    return-void
.end method


# virtual methods
.method public getCounter(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public isDeactivated()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->deactivated:Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
