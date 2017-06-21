.class public Lcom/vkcoffee/android/data/UserNotification;
.super Ljava/lang/Object;
.source "UserNotification.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vkcoffee/android/utils/JSONSerializable;


# static fields
.field public static final ACTION_ENABLE_TOP_NEWSFEED:Ljava/lang/String; = "com.vkcoffee.android.USER_NOTIFICATIONS_ENABLE_TOP_NEWSFEED"

.field public static final ACTION_HIDE_USER_NOTIFICATION:Ljava/lang/String; = "com.vkcoffee.android.USER_NOTIFICATIONS_HIDE_USER_NOTIFICATION"

.field public static final BUTTON_ACTION_OPEN_URL:Ljava/lang/String; = "open_url"

.field public static final BUTTON_ENABLE_TOP_NEWSFEED:Ljava/lang/String; = "enable_top_newsfeed"

.field public static final BUTTON_STYLE_CELL:Ljava/lang/String; = "cell"

.field public static final BUTTON_STYLE_PRIMARY:Ljava/lang/String; = "primary"

.field public static final BUTTON_STYLE_SECONDARY:Ljava/lang/String; = "secondary"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/data/UserNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAST_GET_NOTIFY_APP:Ljava/lang/String; = "last_get_notify_app"

.field public static final LAYOUT_NEWSFEED_APP:Ljava/lang/String; = "app"

.field public static final LAYOUT_NEWSFEED_BANNER:Ljava/lang/String; = "banner"

.field public static final LAYOUT_NEWSFEED_INFO:Ljava/lang/String; = "info"

.field public static final TYPE_ALERT:Ljava/lang/String; = "alert"

.field public static final TYPE_BUBBLE:Ljava/lang/String; = "bubble"

.field public static final TYPE_NEWSFEED:Ljava/lang/String; = "newsfeed"


# instance fields
.field public final buttonAction:Ljava/lang/String;

.field public buttonStyle:Ljava/lang/String;

.field public final buttonText:Ljava/lang/String;

.field public final buttonUrl:Ljava/lang/String;

.field public final id:I

.field public final images:[Lcom/vkcoffee/android/Image;

.field private isHided:Z

.field public layout:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final profileDescription:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final profiles:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field public final title:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/vkcoffee/android/data/UserNotification$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/UserNotification$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/UserNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/UserNotification;->isHided:Z

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/data/UserNotification;->id:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/UserNotification;->isHided:Z

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->title:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->message:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->type:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->layout:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonText:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonAction:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonStyle:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonUrl:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 322
    .local v0, "imageSize":I
    if-ltz v0, :cond_1

    .line 323
    new-array v1, v0, [Lcom/vkcoffee/android/Image;

    iput-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    .line 324
    iget-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    sget-object v2, Lcom/vkcoffee/android/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 329
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->profileDescription:Ljava/lang/String;

    .line 330
    sget-object v1, Lcom/vkcoffee/android/UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    .line 331
    return-void

    .line 326
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;I)V
    .locals 9
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "version"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v6, p0, Lcom/vkcoffee/android/data/UserNotification;->isHided:Z

    .line 131
    const-string/jumbo v5, "id"

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/data/UserNotification;->id:I

    .line 132
    const-string/jumbo v5, "isHided"

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vkcoffee/android/data/UserNotification;->isHided:Z

    .line 134
    const-string/jumbo v5, "title"

    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->title:Ljava/lang/String;

    .line 135
    const-string/jumbo v5, "message"

    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->message:Ljava/lang/String;

    .line 136
    const-string/jumbo v5, "type"

    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->type:Ljava/lang/String;

    .line 137
    const-string/jumbo v5, "layout"

    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->layout:Ljava/lang/String;

    .line 139
    const-string/jumbo v5, "buttonText"

    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonText:Ljava/lang/String;

    .line 140
    const-string/jumbo v5, "buttonAction"

    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonAction:Ljava/lang/String;

    .line 141
    const-string/jumbo v5, "buttonStyle"

    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonStyle:Ljava/lang/String;

    .line 142
    const-string/jumbo v5, "buttonUrl"

    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonUrl:Ljava/lang/String;

    .line 144
    const-string/jumbo v5, "images"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 145
    .local v1, "images":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Lcom/vkcoffee/android/Image;

    iput-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 148
    iget-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    new-instance v6, Lcom/vkcoffee/android/Image;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/Image;-><init>(Lorg/json/JSONObject;)V

    aput-object v6, v5, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    :cond_0
    iput-object v8, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    .line 154
    :cond_1
    const-string/jumbo v5, "profileDescription"

    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->profileDescription:Ljava/lang/String;

    .line 155
    const-string/jumbo v5, "profiles"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 156
    .local v4, "profilesArray":Lorg/json/JSONArray;
    if-nez v4, :cond_3

    .line 157
    iput-object v8, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    .line 170
    :cond_2
    return-void

    .line 159
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    .line 160
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 161
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 162
    .local v2, "jo":Lorg/json/JSONObject;
    if-eqz v2, :cond_4

    .line 163
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 164
    .local v3, "profile":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 165
    const-string/jumbo v5, "photo"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 166
    iget-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v3    # "profile":Lcom/vkcoffee/android/UserProfile;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/util/SparseArray;)V
    .locals 11
    .param p1, "jo"    # Lorg/json/JSONObject;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v8, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkcoffee/android/data/UserNotification;->isHided:Z

    .line 74
    iput p3, p0, Lcom/vkcoffee/android/data/UserNotification;->id:I

    .line 76
    const-string/jumbo v7, "title"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->title:Ljava/lang/String;

    .line 77
    const-string/jumbo v7, "message"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->message:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/vkcoffee/android/data/UserNotification;->type:Ljava/lang/String;

    .line 79
    const-string/jumbo v7, "layout"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->layout:Ljava/lang/String;

    .line 81
    const-string/jumbo v7, "button"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    .local v1, "button":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 83
    iput-object v8, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonUrl:Ljava/lang/String;

    iput-object v8, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonAction:Ljava/lang/String;

    iput-object v8, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonStyle:Ljava/lang/String;

    iput-object v8, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonText:Ljava/lang/String;

    .line 93
    :goto_0
    const-string/jumbo v7, "images"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 94
    .local v3, "images":Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    .line 95
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Lcom/vkcoffee/android/Image;

    iput-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    .line 96
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    array-length v7, v7

    if-ge v2, v7, :cond_4

    .line 97
    iget-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    new-instance v9, Lcom/vkcoffee/android/Image;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vkcoffee/android/Image;-><init>(Lorg/json/JSONObject;)V

    aput-object v9, v7, v2

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    .end local v2    # "i":I
    .end local v3    # "images":Lorg/json/JSONArray;
    :cond_0
    const-string/jumbo v7, "title"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonText:Ljava/lang/String;

    .line 86
    const-string/jumbo v7, "style"

    const-string/jumbo v9, "cell"

    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonStyle:Ljava/lang/String;

    .line 88
    const-string/jumbo v7, "action"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 90
    .local v0, "action":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    move-object v7, v8

    :goto_2
    iput-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonAction:Ljava/lang/String;

    .line 91
    if-nez v0, :cond_2

    move-object v7, v8

    :goto_3
    iput-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonUrl:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_1
    const-string/jumbo v7, "type"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 91
    :cond_2
    const-string/jumbo v7, "url"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 100
    .end local v0    # "action":Lorg/json/JSONObject;
    .restart local v3    # "images":Lorg/json/JSONArray;
    :cond_3
    iput-object v8, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    .line 103
    :cond_4
    const-string/jumbo v7, "user_ids"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 104
    .local v5, "jUsers":Lorg/json/JSONArray;
    const-string/jumbo v7, "group_ids"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 105
    .local v4, "jGroups":Lorg/json/JSONArray;
    if-eqz v5, :cond_6

    .line 106
    const-string/jumbo v7, "users_description"

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->profileDescription:Ljava/lang/String;

    .line 107
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    .line 108
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_9

    .line 109
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    invoke-virtual {p4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/UserProfile;

    .line 110
    .local v6, "p":Lcom/vkcoffee/android/UserProfile;
    if-eqz v6, :cond_5

    .line 111
    iget-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 114
    .end local v2    # "i":I
    .end local v6    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_6
    if-eqz v4, :cond_8

    .line 115
    const-string/jumbo v7, "groups_description"

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->profileDescription:Ljava/lang/String;

    .line 116
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    .line 117
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_9

    .line 118
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    neg-int v7, v7

    invoke-virtual {p4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/UserProfile;

    .line 119
    .restart local v6    # "p":Lcom/vkcoffee/android/UserProfile;
    if-eqz v6, :cond_7

    .line 120
    iget-object v7, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 124
    .end local v2    # "i":I
    .end local v6    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_8
    iput-object v8, p0, Lcom/vkcoffee/android/data/UserNotification;->profileDescription:Ljava/lang/String;

    .line 125
    iput-object v8, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    .line 127
    :cond_9
    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/data/UserNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/data/UserNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/vkcoffee/android/data/UserNotification;->isHided:Z

    return p1
.end method

.method private hideNotification(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isAccept"    # Z

    .prologue
    const v1, 0x77359401

    .line 402
    iget v0, p0, Lcom/vkcoffee/android/data/UserNotification;->id:I

    invoke-static {v1, v0}, Lcom/vkcoffee/android/cache/NewsfeedCache;->remove(II)V

    .line 403
    iget v0, p0, Lcom/vkcoffee/android/data/UserNotification;->id:I

    invoke-static {v1, v0}, Lcom/vkcoffee/android/data/Posts;->deleteFromStaticCache(II)V

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.USER_NOTIFICATIONS_HIDE_USER_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id"

    iget v2, p0, Lcom/vkcoffee/android/data/UserNotification;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isAccepted"

    .line 405
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    .line 404
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 406
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/UserNotification;->isHided:Z

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Lcom/vkcoffee/android/api/apps/HideNotificationRequest;

    iget v1, p0, Lcom/vkcoffee/android/data/UserNotification;->id:I

    invoke-direct {v0, p2, v1}, Lcom/vkcoffee/android/api/apps/HideNotificationRequest;-><init>(ZI)V

    new-instance v1, Lcom/vkcoffee/android/data/UserNotification$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/data/UserNotification$2;-><init>(Lcom/vkcoffee/android/data/UserNotification;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/apps/HideNotificationRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 421
    :cond_0
    return-void
.end method

.method private static isValidNewsfeedLayout(Lcom/vkcoffee/android/data/UserNotification;)Z
    .locals 5
    .param p0, "notification"    # Lcom/vkcoffee/android/data/UserNotification;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    iget-object v2, p0, Lcom/vkcoffee/android/data/UserNotification;->layout:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 301
    :pswitch_0
    return v0

    .line 295
    :sswitch_0
    const-string/jumbo v4, "app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "banner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "info"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_1
        0x17a21 -> :sswitch_0
        0x3164ae -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 12
    .param p0, "jo"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/UserNotification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v5, 0x0

    .line 252
    .local v5, "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/UserNotification;>;"
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 254
    .local v8, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    if-eqz p0, :cond_0

    const-string/jumbo v10, "profiles"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "profiles"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 255
    const-string/jumbo v10, "profiles"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 256
    .local v2, "jProfiles":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 257
    new-instance v7, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 258
    .local v7, "p":Lcom/vkcoffee/android/UserProfile;
    iget v10, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v8, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "i":I
    .end local v2    # "jProfiles":Lorg/json/JSONArray;
    .end local v7    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    if-eqz p0, :cond_1

    const-string/jumbo v10, "groups"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "groups"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 262
    const-string/jumbo v10, "groups"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 263
    .restart local v2    # "jProfiles":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_1

    .line 264
    new-instance v7, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 265
    .restart local v7    # "p":Lcom/vkcoffee/android/UserProfile;
    iget v10, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    neg-int v10, v10

    iput v10, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 266
    iget v10, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v8, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    .end local v0    # "i":I
    .end local v2    # "jProfiles":Lorg/json/JSONArray;
    .end local v7    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    if-nez p0, :cond_4

    const/4 v3, 0x0

    .line 271
    .local v3, "jsonArray":Lorg/json/JSONArray;
    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 272
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/UserNotification;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .restart local v5    # "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/UserNotification;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_5

    .line 274
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 275
    .local v6, "object":Lorg/json/JSONObject;
    if-eqz v6, :cond_3

    .line 276
    const-string/jumbo v10, "type"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 277
    .local v9, "type":Ljava/lang/String;
    const-string/jumbo v10, "id"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 278
    .local v1, "id":I
    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_2
    :goto_4
    packed-switch v10, :pswitch_data_0

    .line 273
    .end local v1    # "id":I
    .end local v9    # "type":Ljava/lang/String;
    :cond_3
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 270
    .end local v0    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "object":Lorg/json/JSONObject;
    :cond_4
    const-string/jumbo v10, "items"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_2

    .line 278
    .restart local v0    # "i":I
    .restart local v1    # "id":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "object":Lorg/json/JSONObject;
    .restart local v9    # "type":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v11, "alert"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v10, 0x0

    goto :goto_4

    :sswitch_1
    const-string/jumbo v11, "bubble"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v10, 0x1

    goto :goto_4

    :sswitch_2
    const-string/jumbo v11, "newsfeed"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v10, 0x2

    goto :goto_4

    .line 282
    :pswitch_0
    new-instance v4, Lcom/vkcoffee/android/data/UserNotification;

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v4, v10, v9, v1, v8}, Lcom/vkcoffee/android/data/UserNotification;-><init>(Lorg/json/JSONObject;Ljava/lang/String;ILandroid/util/SparseArray;)V

    .line 283
    .local v4, "notification":Lcom/vkcoffee/android/data/UserNotification;
    invoke-static {v4}, Lcom/vkcoffee/android/data/UserNotification;->isValidNewsfeedLayout(Lcom/vkcoffee/android/data/UserNotification;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 284
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 291
    .end local v0    # "i":I
    .end local v1    # "id":I
    .end local v4    # "notification":Lcom/vkcoffee/android/data/UserNotification;
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v9    # "type":Ljava/lang/String;
    :cond_5
    return-object v5

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        -0x52264b74 -> :sswitch_1
        0x589895c -> :sswitch_0
        0x532bcef1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public findImage(I)Lcom/vkcoffee/android/Image;
    .locals 1
    .param p1, "w"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 174
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/data/UserNotification;->findImage(II)Lcom/vkcoffee/android/Image;

    move-result-object v0

    return-object v0
.end method

.method public findImage(II)Lcom/vkcoffee/android/Image;
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "image":Lcom/vkcoffee/android/Image;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 181
    if-nez v1, :cond_1

    .line 182
    iget-object v2, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    aget-object v1, v2, v0

    .line 180
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    if-lez p2, :cond_2

    .line 184
    iget v2, v1, Lcom/vkcoffee/android/Image;->w:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v1, Lcom/vkcoffee/android/Image;->h:I

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/vkcoffee/android/Image;->w:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/vkcoffee/android/Image;->h:I

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 185
    iget-object v2, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    aget-object v1, v2, v0

    goto :goto_1

    .line 188
    :cond_2
    iget v2, v1, Lcom/vkcoffee/android/Image;->w:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/vkcoffee/android/Image;->w:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 189
    iget-object v2, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    aget-object v1, v2, v0

    goto :goto_1

    .line 193
    :cond_3
    return-object v1
.end method

.method public findImageUrl(II)Ljava/lang/String;
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/data/UserNotification;->findImage(II)Lcom/vkcoffee/android/Image;

    move-result-object v0

    .line 199
    .local v0, "image":Lcom/vkcoffee/android/Image;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/vkcoffee/android/Image;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public forceAction(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 375
    iget-object v1, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonAction:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 390
    invoke-direct {p0, p1, v2}, Lcom/vkcoffee/android/data/UserNotification;->hideNotification(Landroid/content/Context;Z)V

    .line 393
    :goto_1
    return-void

    .line 375
    :sswitch_0
    const-string/jumbo v4, "open_url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "enable_top_newsfeed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 377
    :pswitch_0
    invoke-direct {p0, p1, v2}, Lcom/vkcoffee/android/data/UserNotification;->hideNotification(Landroid/content/Context;Z)V

    .line 380
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    invoke-direct {p0, p1, v2}, Lcom/vkcoffee/android/data/UserNotification;->hideNotification(Landroid/content/Context;Z)V

    .line 387
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.USER_NOTIFICATIONS_ENABLE_TOP_NEWSFEED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 375
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1e0f1a06 -> :sswitch_0
        0x51277fd7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public forceClose(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/data/UserNotification;->hideNotification(Landroid/content/Context;Z)V

    .line 397
    return-void
.end method

.method public getJSONSerializableClassType()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public getJSONSerializableVersion()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public serializableToJson(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 214
    const-string/jumbo v4, "id"

    iget v5, p0, Lcom/vkcoffee/android/data/UserNotification;->id:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    const-string/jumbo v4, "isHided"

    iget-boolean v5, p0, Lcom/vkcoffee/android/data/UserNotification;->isHided:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 217
    const-string/jumbo v4, "title"

    iget-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->title:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string/jumbo v4, "message"

    iget-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->message:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string/jumbo v4, "type"

    iget-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->type:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string/jumbo v4, "layout"

    iget-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->layout:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string/jumbo v4, "buttonText"

    iget-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonText:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string/jumbo v4, "buttonAction"

    iget-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonAction:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v4, "buttonStyle"

    iget-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonStyle:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string/jumbo v4, "buttonUrl"

    iget-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    iget-object v4, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    if-eqz v4, :cond_1

    .line 228
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 229
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 230
    iget-object v4, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/Image;->toJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    const-string/jumbo v4, "images"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    .end local v0    # "i":I
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v4, "profileDescription"

    iget-object v5, p0, Lcom/vkcoffee/android/data/UserNotification;->profileDescription:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 237
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 238
    iget-object v4, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    .line 239
    .local v3, "userProfile":Lcom/vkcoffee/android/UserProfile;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 240
    .local v2, "o":Lorg/json/JSONObject;
    const-string/jumbo v5, "id"

    iget v6, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    const-string/jumbo v5, "photo"

    iget-object v6, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 244
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v3    # "userProfile":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    const-string/jumbo v4, "profiles"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    :cond_3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 335
    iget v0, p0, Lcom/vkcoffee/android/data/UserNotification;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/UserNotification;->isHided:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 338
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->layout:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->buttonUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->profileDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->profiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 355
    return-void

    .line 336
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/data/UserNotification;->images:[Lcom/vkcoffee/android/Image;

    array-length v0, v0

    goto :goto_1
.end method
