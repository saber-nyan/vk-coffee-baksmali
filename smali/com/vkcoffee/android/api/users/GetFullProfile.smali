.class public Lcom/vkcoffee/android/api/users/GetFullProfile;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GetFullProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/users/GetFullProfile$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/users/GetFullProfile$Result;",
        ">;"
    }
.end annotation


# instance fields
.field uid:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "photoCount"    # I
    .param p3, "giftCount"    # I
    .param p4, "goodsCount"    # I

    .prologue
    const/4 v2, 0x1

    .line 52
    if-lez p1, :cond_0

    const-string v0, "execute.getFullProfileNewNew"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 53
    if-lez p1, :cond_2

    .line 54
    invoke-static {p1}, Lcom/vkcoffee/android/ProfileStatic;->verBafCoffee(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "group_id"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 69
    :goto_1
    iput p1, p0, Lcom/vkcoffee/android/api/users/GetFullProfile;->uid:I

    .line 70
    const-string v0, "photo_count"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/users/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 71
    const-string v0, "gift_count"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/users/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 72
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/users/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 73
    const-string v0, "skip_hidden"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/users/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 74
    return-void

    .line 52
    :cond_0
    const-string v0, "execute.getFullGroupNewNew"

    goto :goto_0

    .line 57
    :cond_1
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/users/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1

    .line 61
    :cond_2
    invoke-static {p1}, Lcom/vkcoffee/android/ProfileStatic;->verBafCoffee(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    const-string v0, "group_id"

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 66
    :goto_2
    const-string v0, "func_v"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 67
    const-string v0, "good_count"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/users/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1

    .line 64
    :cond_3
    const-string v0, "group_id"

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/GetFullProfile;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_2
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/users/GetFullProfile$Result;
    .locals 106
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 78
    :try_start_0
    const-string v95, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v76, Lcom/vkcoffee/android/api/users/GetFullProfile$Result;

    invoke-direct/range {v76 .. v76}, Lcom/vkcoffee/android/api/users/GetFullProfile$Result;-><init>()V

    .line 650
    :goto_0
    return-object v76

    .line 84
    :cond_0
    new-instance v31, Lcom/vkcoffee/android/api/ExtendedUserProfile;

    invoke-direct/range {v31 .. v31}, Lcom/vkcoffee/android/api/ExtendedUserProfile;-><init>()V

    .line 85
    .local v31, "ep":Lcom/vkcoffee/android/api/ExtendedUserProfile;
    new-instance v95, Lcom/vkcoffee/android/UserProfile;

    invoke-direct/range {v95 .. v95}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 86
    const-string v95, "screen_name"

    new-instance v96, Ljava/lang/StringBuilder;

    const-string v97, "id"

    invoke-direct/range {v96 .. v97}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/api/users/GetFullProfile;->uid:I

    move/from16 v97, v0

    invoke-virtual/range {v96 .. v97}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->screenName:Ljava/lang/String;

    .line 87
    const-string v95, "is_favorite"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_31

    const/16 v95, 0x1

    :goto_1
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isFavorite:Z

    .line 88
    const-string v95, "is_subscribed"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_32

    const/16 v95, 0x1

    :goto_2
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isSubscribed:Z

    .line 89
    const-string v95, "can_send_friend_request"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_33

    const/16 v95, 0x1

    :goto_3
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->canSendFriendRequest:Z

    .line 90
    const-string v95, "can_upload_video"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_34

    const/16 v95, 0x1

    :goto_4
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->canUploadVideo:Z

    .line 94
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/api/users/GetFullProfile;->uid:I

    move/from16 v95, v0

    if-lez v95, :cond_4f

    .line 95
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v95, v0

    const-string v96, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v96

    move/from16 v0, v96

    move-object/from16 v1, v95

    iput v0, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 96
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v95, v0

    const-string v96, "first_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v96

    move-object/from16 v1, v95

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 97
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v95, v0

    const-string v96, "last_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v96

    move-object/from16 v1, v95

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 98
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v95, v0

    new-instance v96, Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v97, v0

    move-object/from16 v0, v97

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v97, v0

    invoke-static/range {v97 .. v97}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v97, " "

    invoke-virtual/range {v96 .. v97}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v96

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v97, v0

    move-object/from16 v0, v97

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v97, v0

    invoke-virtual/range {v96 .. v97}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v96

    move-object/from16 v1, v95

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 99
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    sget v95, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v97, 0x3f800000    # 1.0f

    cmpl-float v95, v95, v97

    if-lez v95, :cond_35

    const-string v95, "photo_medium_rec"

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v96

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 100
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    const-string v95, "friend_status"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    const/16 v97, 0x3

    move/from16 v0, v95

    move/from16 v1, v97

    if-ne v0, v1, :cond_36

    const/16 v95, 0x1

    :goto_6
    move/from16 v0, v95

    move-object/from16 v1, v96

    iput-boolean v0, v1, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    .line 101
    const-string v95, "photo_max"

    const-string v96, "photo_medium_rec"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    .line 102
    const-string v95, "activity"

    const-string v96, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->activity:Ljava/lang/String;

    .line 103
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    const-string v95, "sex"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    const/16 v97, 0x1

    move/from16 v0, v95

    move/from16 v1, v97

    if-ne v0, v1, :cond_37

    const/16 v95, 0x1

    :goto_7
    move/from16 v0, v95

    move-object/from16 v1, v96

    iput-boolean v0, v1, Lcom/vkcoffee/android/UserProfile;->f:Z

    .line 104
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v95, v0

    invoke-static/range {p1 .. p1}, Lcom/vkcoffee/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v96

    move/from16 v0, v96

    move-object/from16 v1, v95

    iput v0, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 105
    const-string v95, "crop_photo"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_1

    .line 106
    new-instance v95, Lcom/vkcoffee/android/Photo;

    const-string v96, "crop_photo"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v96

    const-string v97, "photo"

    invoke-virtual/range {v96 .. v97}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v96

    invoke-direct/range {v95 .. v96}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->photo:Lcom/vkcoffee/android/Photo;

    .line 107
    const-string v95, "crop_photo"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    const-string v96, "rect"

    invoke-virtual/range {v95 .. v96}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v67

    .line 108
    .local v67, "rect":Lorg/json/JSONObject;
    const-string v95, "crop_photo"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    const-string v96, "crop"

    invoke-virtual/range {v95 .. v96}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 109
    .local v16, "crop":Lorg/json/JSONObject;
    const-string v95, "x"

    move-object/from16 v0, v16

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v22

    .line 110
    .local v22, "cropX1":D
    const-string v95, "x2"

    move-object/from16 v0, v16

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v24

    .line 111
    .local v24, "cropX2":D
    const-string v95, "y"

    move-object/from16 v0, v16

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v26

    .line 112
    .local v26, "cropY1":D
    const-string v95, "y2"

    move-object/from16 v0, v16

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v28

    .line 113
    .local v28, "cropY2":D
    const-string v95, "x"

    move-object/from16 v0, v67

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v68

    .line 114
    .local v68, "rectX1":D
    const-string v95, "x2"

    move-object/from16 v0, v67

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v70

    .line 115
    .local v70, "rectX2":D
    const-string v95, "y"

    move-object/from16 v0, v67

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v72

    .line 116
    .local v72, "rectY1":D
    sub-double v96, v24, v22

    const-wide/high16 v98, 0x4059000000000000L    # 100.0

    div-double v20, v96, v98

    .line 117
    .local v20, "cropW":D
    sub-double v96, v28, v26

    const-wide/high16 v98, 0x4059000000000000L    # 100.0

    div-double v18, v96, v98

    .line 118
    .local v18, "cropH":D
    new-instance v95, Landroid/graphics/RectF;

    const-wide/high16 v96, 0x4059000000000000L    # 100.0

    div-double v96, v22, v96

    const-wide/high16 v98, 0x4059000000000000L    # 100.0

    div-double v98, v68, v98

    mul-double v98, v98, v20

    add-double v96, v96, v98

    move-wide/from16 v0, v96

    double-to-float v0, v0

    move/from16 v96, v0

    const-wide/high16 v98, 0x4059000000000000L    # 100.0

    div-double v98, v26, v98

    const-wide/high16 v100, 0x4059000000000000L    # 100.0

    div-double v100, v72, v100

    mul-double v100, v100, v18

    add-double v98, v98, v100

    move-wide/from16 v0, v98

    double-to-float v0, v0

    move/from16 v97, v0

    const-wide/high16 v98, 0x4059000000000000L    # 100.0

    div-double v98, v22, v98

    const-wide/high16 v100, 0x4059000000000000L    # 100.0

    div-double v100, v68, v100

    mul-double v100, v100, v20

    add-double v98, v98, v100

    sub-double v100, v70, v68

    const-wide/high16 v102, 0x4059000000000000L    # 100.0

    div-double v100, v100, v102

    mul-double v100, v100, v20

    add-double v98, v98, v100

    move-wide/from16 v0, v98

    double-to-float v0, v0

    move/from16 v98, v0

    const-wide/high16 v100, 0x4059000000000000L    # 100.0

    div-double v100, v26, v100

    const-wide/high16 v102, 0x4059000000000000L    # 100.0

    div-double v102, v72, v102

    mul-double v102, v102, v18

    add-double v100, v100, v102

    const-string v99, "y2"

    move-object/from16 v0, v67

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v102

    sub-double v102, v102, v72

    const-wide/high16 v104, 0x4059000000000000L    # 100.0

    div-double v102, v102, v104

    mul-double v102, v102, v18

    add-double v100, v100, v102

    move-wide/from16 v0, v100

    double-to-float v0, v0

    move/from16 v99, v0

    invoke-direct/range {v95 .. v99}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->photoRect:Landroid/graphics/RectF;

    .line 120
    .end local v16    # "crop":Lorg/json/JSONObject;
    .end local v18    # "cropH":D
    .end local v20    # "cropW":D
    .end local v22    # "cropX1":D
    .end local v24    # "cropX2":D
    .end local v26    # "cropY1":D
    .end local v28    # "cropY2":D
    .end local v67    # "rect":Lorg/json/JSONObject;
    .end local v68    # "rectX1":D
    .end local v70    # "rectX2":D
    .end local v72    # "rectY1":D
    :cond_1
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 121
    .local v10, "cities":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v95, "cities"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v40

    .line 122
    .local v40, "jcities":Lorg/json/JSONArray;
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_8
    invoke-virtual/range {v40 .. v40}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_38

    .line 126
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 127
    .local v14, "countries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v95, "cities"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v41

    .line 128
    .local v41, "jcountries":Lorg/json/JSONArray;
    const/16 v36, 0x0

    :goto_9
    invoke-virtual/range {v41 .. v41}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_39

    .line 132
    const-string v95, "can_write_private_message"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_3a

    const/16 v95, 0x1

    :goto_a
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->canWrite:Z

    .line 133
    const-string v95, "can_post"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_3b

    const/16 v95, 0x1

    :goto_b
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->canPost:Z

    .line 134
    const-string v95, "can_see_all_posts"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_3c

    const/16 v95, 0x1

    :goto_c
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    .line 135
    const-string v95, "all"

    const-string v96, "wall_default"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    invoke-virtual/range {v95 .. v96}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->showAllPosts:Z

    .line 136
    const-string v95, "can_call"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_3d

    const/16 v95, 0x1

    :goto_d
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->canCall:Z

    .line 137
    const-string v95, "blacklisted_by_me"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_3e

    const/16 v95, 0x1

    :goto_e
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->blacklisted:Z

    .line 138
    const-string v95, "blacklisted"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_2

    .line 139
    new-instance v95, Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;

    invoke-direct/range {v95 .. v95}, Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->ban:Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;

    .line 141
    :cond_2
    const-string v95, "relation"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relation:I

    .line 142
    const-string v95, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_3

    .line 143
    const-string v95, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    const-string v96, "id"

    invoke-virtual/range {v95 .. v96}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relationPartner:I

    .line 144
    new-instance v95, Ljava/lang/StringBuilder;

    const-string v96, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v96

    const-string v97, "first_name"

    invoke-virtual/range {v96 .. v97}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    invoke-static/range {v96 .. v96}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v96

    invoke-direct/range {v95 .. v96}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v96, " "

    invoke-virtual/range {v95 .. v96}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v95

    const-string v96, "relation_partner"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v96

    const-string v97, "last_name"

    invoke-virtual/range {v96 .. v97}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    invoke-virtual/range {v95 .. v96}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relationPartnerName:Ljava/lang/String;

    .line 146
    :cond_3
    const-string v95, "bdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_4

    .line 147
    const-string v95, "bdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    const-string v96, "\\."

    invoke-virtual/range {v95 .. v96}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "bd":[Ljava/lang/String;
    const/16 v95, 0x0

    aget-object v95, v6, v95

    invoke-static/range {v95 .. v95}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->bDay:I

    .line 149
    const/16 v95, 0x1

    aget-object v95, v6, v95

    invoke-static/range {v95 .. v95}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->bMonth:I

    .line 150
    array-length v0, v6

    move/from16 v95, v0

    const/16 v96, 0x2

    move/from16 v0, v95

    move/from16 v1, v96

    if-le v0, v1, :cond_4

    .line 151
    const/16 v95, 0x2

    aget-object v95, v6, v95

    invoke-static/range {v95 .. v95}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->bYear:I

    .line 154
    .end local v6    # "bd":[Ljava/lang/String;
    :cond_4
    const-string v95, "first_name_dat"

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v96, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->firstNameDat:Ljava/lang/String;

    .line 155
    const-string v95, "first_name_gen"

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v96, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    .line 156
    const-string v95, "first_name_ins"

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v96, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->firstNameIns:Ljava/lang/String;

    .line 157
    const-string v95, "first_name_acc"

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v96, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->firstNameAcc:Ljava/lang/String;

    .line 158
    const-string v95, "last_name_dat"

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v96, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lastNameDat:Ljava/lang/String;

    .line 159
    const-string v95, "last_name_gen"

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v96, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lastNameGen:Ljava/lang/String;

    .line 160
    const-string v95, "last_name_ins"

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v96, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lastNameIns:Ljava/lang/String;

    .line 161
    const-string v95, "last_name_acc"

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    move-object/from16 v0, v96

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v96, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lastNameAcc:Ljava/lang/String;

    .line 162
    const-string v95, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_5

    const-string v95, "country"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_5

    .line 163
    const-string v95, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    const-string v96, "title"

    invoke-virtual/range {v95 .. v96}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    .line 164
    const-string v95, "country"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    const-string v96, "title"

    invoke-virtual/range {v95 .. v96}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->country:Ljava/lang/String;

    .line 166
    :cond_5
    const-string v95, "mobile_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_6

    const-string v95, "mobile_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_6

    .line 167
    const-string v95, "mobile_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    .line 169
    :cond_6
    const-string v95, "home_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_7

    const-string v95, "home_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_7

    .line 170
    const-string v95, "home_phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    .line 172
    :cond_7
    const-string v95, "skype"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_8

    .line 173
    const-string v95, "skype"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    .line 175
    :cond_8
    const-string v95, "twitter"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_9

    .line 176
    const-string v95, "twitter"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    .line 178
    :cond_9
    const-string v95, "livejournal"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_a

    .line 179
    const-string v95, "livejournal"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    .line 181
    :cond_a
    const-string v95, "facebook"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_b

    const-string v95, "facebook"

    const-wide/16 v96, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-wide/from16 v2, v96

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v96

    const-wide/16 v98, -0x1

    cmp-long v95, v96, v98

    if-eqz v95, :cond_b

    .line 182
    const-string v95, "facebook"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v96

    move-wide/from16 v0, v96

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->facebookId:J

    .line 183
    const-string v95, "facebook_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->facebookName:Ljava/lang/String;

    .line 185
    :cond_b
    const-string v95, "instagram"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_c

    .line 186
    const-string v95, "instagram"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->instagram:Ljava/lang/String;

    .line 188
    :cond_c
    const-string v95, "friend_status"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    .line 189
    const-string v95, "schools"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v78

    .line 190
    .local v78, "schools":Lorg/json/JSONArray;
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->schools:Ljava/util/ArrayList;

    .line 191
    if-eqz v78, :cond_d

    .line 192
    const/16 v36, 0x0

    :goto_f
    invoke-virtual/range {v78 .. v78}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_3f

    .line 206
    :cond_d
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->universities:Ljava/util/ArrayList;

    .line 207
    const-string v95, "universities"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v87

    .line 208
    .local v87, "univers":Lorg/json/JSONArray;
    if-eqz v87, :cond_e

    .line 209
    const/16 v36, 0x0

    :goto_10
    invoke-virtual/range {v87 .. v87}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_40

    .line 224
    :cond_e
    const-string v95, "interests"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_f

    const-string v95, "interests"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_f

    .line 225
    const-string v95, "interests"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->interests:Ljava/lang/String;

    .line 227
    :cond_f
    const-string v95, "movies"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_10

    const-string v95, "movies"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_10

    .line 228
    const-string v95, "movies"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->movies:Ljava/lang/String;

    .line 230
    :cond_10
    const-string v95, "music"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_11

    const-string v95, "music"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_11

    .line 231
    const-string v95, "music"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->music:Ljava/lang/String;

    .line 233
    :cond_11
    const-string v95, "tv"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_12

    const-string v95, "tv"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_12

    .line 234
    const-string v95, "tv"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->tv:Ljava/lang/String;

    .line 236
    :cond_12
    const-string v95, "books"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_13

    const-string v95, "books"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_13

    .line 237
    const-string v95, "books"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->books:Ljava/lang/String;

    .line 239
    :cond_13
    const-string v95, "games"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_14

    const-string v95, "games"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_14

    .line 240
    const-string v95, "games"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->games:Ljava/lang/String;

    .line 242
    :cond_14
    const-string v95, "about"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_15

    const-string v95, "about"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_15

    .line 243
    const-string v95, "about"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    .line 245
    :cond_15
    const-string v95, "quotes"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_16

    const-string v95, "quotes"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_16

    .line 246
    const-string v95, "quotes"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->quotations:Ljava/lang/String;

    .line 248
    :cond_16
    const-string v95, "activities"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_17

    const-string v95, "activities"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_17

    .line 249
    const-string v95, "activities"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->activities:Ljava/lang/String;

    .line 251
    :cond_17
    const-string v95, "home_town"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_18

    const-string v95, "home_town"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_18

    .line 252
    const-string v95, "home_town"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->hometown:Ljava/lang/String;

    .line 254
    :cond_18
    const-string v95, "site"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_19

    const-string v95, "site"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-lez v95, :cond_19

    .line 255
    const-string v95, "site"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    .line 257
    :cond_19
    const-string v95, "verified"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_43

    const/16 v95, 0x1

    :goto_11
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->verified:Z

    .line 258
    const-string v95, "personal"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v63

    .line 259
    .local v63, "personal":Lorg/json/JSONObject;
    if-eqz v63, :cond_1b

    .line 260
    const-string v95, "langs"

    move-object/from16 v0, v63

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v57

    .line 261
    .local v57, "langs":Lorg/json/JSONArray;
    if-eqz v57, :cond_1a

    .line 262
    new-instance v81, Ljava/util/ArrayList;

    invoke-direct/range {v81 .. v81}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v81, "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v36, 0x0

    :goto_12
    invoke-virtual/range {v57 .. v57}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_44

    .line 266
    const-string v95, ", "

    move-object/from16 v0, v95

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->langs:Ljava/lang/String;

    .line 268
    .end local v81    # "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1a
    const-string v95, "political"

    move-object/from16 v0, v63

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->political:I

    .line 269
    const-string v95, "religion"

    move-object/from16 v0, v63

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    .line 270
    const-string v95, "life_main"

    move-object/from16 v0, v63

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lifeMain:I

    .line 271
    const-string v95, "people_main"

    move-object/from16 v0, v63

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->peopleMain:I

    .line 272
    const-string v95, "inspired_by"

    move-object/from16 v0, v63

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    .line 273
    const-string v95, "smoking"

    move-object/from16 v0, v63

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->smoking:I

    .line 274
    const-string v95, "alcohol"

    move-object/from16 v0, v63

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->alcohol:I

    .line 276
    .end local v57    # "langs":Lorg/json/JSONArray;
    :cond_1b
    new-instance v74, Landroid/util/SparseArray;

    invoke-direct/range {v74 .. v74}, Landroid/util/SparseArray;-><init>()V

    .line 277
    .local v74, "relatives":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    const-string v95, "relatives_profiles"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v49

    .line 278
    .local v49, "jrelprofiles":Lorg/json/JSONArray;
    if-eqz v49, :cond_1c

    .line 279
    const/16 v36, 0x0

    :goto_13
    invoke-virtual/range {v49 .. v49}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_45

    .line 284
    :cond_1c
    const-string v95, "relatives"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v75

    .line 285
    .local v75, "rels":Lorg/json/JSONArray;
    if-eqz v75, :cond_1d

    .line 286
    const/16 v62, 0x0

    .line 287
    .local v62, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const/16 v79, 0x0

    .line 288
    .local v79, "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v9, 0x0

    .line 289
    .local v9, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const/16 v35, 0x0

    .line 290
    .local v35, "grandparents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const/16 v34, 0x0

    .line 291
    .local v34, "grandchildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const/16 v36, 0x0

    :goto_14
    invoke-virtual/range {v75 .. v75}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_46

    .line 350
    sget-object v95, Lcom/vkcoffee/android/UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v62

    move-object/from16 v1, v95

    invoke-static {v0, v1}, Lcom/vkcoffee/android/utils/Utils;->arrayListToArray(Ljava/util/ArrayList;Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v95

    check-cast v95, [Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relativesParents:[Lcom/vkcoffee/android/UserProfile;

    .line 351
    sget-object v95, Lcom/vkcoffee/android/UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v79

    move-object/from16 v1, v95

    invoke-static {v0, v1}, Lcom/vkcoffee/android/utils/Utils;->arrayListToArray(Ljava/util/ArrayList;Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v95

    check-cast v95, [Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relativesSibling:[Lcom/vkcoffee/android/UserProfile;

    .line 352
    sget-object v95, Lcom/vkcoffee/android/UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v95

    invoke-static {v9, v0}, Lcom/vkcoffee/android/utils/Utils;->arrayListToArray(Ljava/util/ArrayList;Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v95

    check-cast v95, [Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relativesChild:[Lcom/vkcoffee/android/UserProfile;

    .line 353
    sget-object v95, Lcom/vkcoffee/android/UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, v95

    invoke-static {v0, v1}, Lcom/vkcoffee/android/utils/Utils;->arrayListToArray(Ljava/util/ArrayList;Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v95

    check-cast v95, [Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relativesGrandparent:[Lcom/vkcoffee/android/UserProfile;

    .line 354
    sget-object v95, Lcom/vkcoffee/android/UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, v95

    invoke-static {v0, v1}, Lcom/vkcoffee/android/utils/Utils;->arrayListToArray(Ljava/util/ArrayList;Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v95

    check-cast v95, [Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->relativesGrandchild:[Lcom/vkcoffee/android/UserProfile;

    .line 356
    .end local v9    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v34    # "grandchildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v35    # "grandparents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v62    # "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v79    # "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_1d
    const-string v95, "last_seen"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_1e

    .line 357
    const-string v95, "last_seen"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    const-string v96, "time"

    invoke-virtual/range {v95 .. v96}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lastSeen:I

    .line 358
    const-string v95, "last_seen"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    const-string v96, "platform"

    invoke-virtual/range {v95 .. v96}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v64

    .line 359
    .local v64, "platform":I
    const/16 v95, 0x1

    move/from16 v0, v64

    move/from16 v1, v95

    if-eq v0, v1, :cond_49

    const/16 v95, 0x2

    move/from16 v0, v64

    move/from16 v1, v95

    if-eq v0, v1, :cond_49

    const/16 v95, 0x3

    move/from16 v0, v64

    move/from16 v1, v95

    if-eq v0, v1, :cond_49

    const/16 v95, 0x4

    move/from16 v0, v64

    move/from16 v1, v95

    if-eq v0, v1, :cond_49

    const/16 v95, 0x5

    move/from16 v0, v64

    move/from16 v1, v95

    if-eq v0, v1, :cond_49

    const/16 v94, 0x0

    .line 360
    .local v94, "z":Z
    :goto_15
    move/from16 v0, v94

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lastSeenMobile:Z

    .line 362
    .end local v64    # "platform":I
    .end local v94    # "z":Z
    :cond_1e
    const-string v95, "deactivated"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-static/range {v95 .. v95}, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;->parse(Ljava/lang/String;)Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->deactivated:Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    .line 363
    const-string v95, "gifts"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v33

    .line 364
    .local v33, "gifts":Lorg/json/JSONObject;
    if-eqz v33, :cond_1f

    .line 365
    new-instance v95, Lcom/vkcoffee/android/data/VKList;

    const-class v96, Lcom/vkcoffee/android/api/models/GiftItem;

    move-object/from16 v0, v95

    move-object/from16 v1, v33

    move-object/from16 v2, v96

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->gifts:Lcom/vkcoffee/android/data/VKList;

    .line 367
    :cond_1f
    const-string v95, "friends"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_20

    .line 368
    const-string v95, "friends"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 369
    .local v32, "friends":Lorg/json/JSONArray;
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friends:Ljava/util/ArrayList;

    .line 370
    const/16 v36, 0x0

    :goto_16
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_4a

    .line 374
    .end local v32    # "friends":Lorg/json/JSONArray;
    :cond_20
    const-string v95, "career"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_21

    .line 375
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->career:Ljava/util/ArrayList;

    .line 376
    const-string v95, "career"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 377
    .local v8, "career":Lorg/json/JSONArray;
    const/16 v36, 0x0

    :goto_17
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_4b

    .line 394
    .end local v8    # "career":Lorg/json/JSONArray;
    :cond_21
    const-string v95, "display_fields"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_22

    .line 395
    const-string v95, "display_fields"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 396
    .local v17, "df":Lorg/json/JSONArray;
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->displayFields:Ljava/util/ArrayList;

    .line 397
    const/16 v36, 0x0

    :goto_18
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_4e

    .line 401
    .end local v17    # "df":Lorg/json/JSONArray;
    :cond_22
    const-string v95, "all_photos_are_hidden"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->allPhotosAreHidden:Z

    .line 524
    .end local v10    # "cities":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v14    # "countries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v33    # "gifts":Lorg/json/JSONObject;
    .end local v36    # "i":I
    .end local v40    # "jcities":Lorg/json/JSONArray;
    .end local v41    # "jcountries":Lorg/json/JSONArray;
    .end local v49    # "jrelprofiles":Lorg/json/JSONArray;
    .end local v63    # "personal":Lorg/json/JSONObject;
    .end local v74    # "relatives":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v75    # "rels":Lorg/json/JSONArray;
    .end local v78    # "schools":Lorg/json/JSONArray;
    .end local v87    # "univers":Lorg/json/JSONArray;
    :goto_19
    const-string v95, "is_hidden_from_feed"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_73

    const/16 v95, 0x1

    :goto_1a
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isHiddenFromFeed:Z

    .line 525
    const-string v95, "has_photo"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_74

    const/16 v95, 0x1

    :goto_1b
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->hasPhoto:Z

    .line 526
    new-instance v95, Ljava/util/HashMap;

    invoke-direct/range {v95 .. v95}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    .line 527
    const-string v95, "counters"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 528
    .local v13, "counters":Lorg/json/JSONObject;
    if-eqz v13, :cond_23

    .line 529
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v55

    .line 530
    .local v55, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1c
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v95

    if-nez v95, :cond_75

    .line 535
    .end local v55    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/api/users/GetFullProfile;->uid:I

    move/from16 v95, v0

    if-gez v95, :cond_76

    .line 536
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    move-object/from16 v95, v0

    const-string v96, "members"

    const-string v97, "members_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v97

    invoke-static/range {v97 .. v97}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v97

    invoke-virtual/range {v95 .. v97}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    move-object/from16 v95, v0

    const-string v96, "friends_members"

    const-string v97, "friends_members_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v97

    invoke-static/range {v97 .. v97}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v97

    invoke-virtual/range {v95 .. v97}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_24
    :goto_1d
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->groups:Ljava/util/ArrayList;

    .line 543
    const-string v95, "groups"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_25

    const-string v95, "groups"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v95

    if-eqz v95, :cond_25

    .line 544
    const-string v95, "groups"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v43

    .line 545
    .local v43, "jg":Lorg/json/JSONArray;
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_1e
    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_77

    .line 549
    .end local v36    # "i":I
    .end local v43    # "jg":Lorg/json/JSONArray;
    :cond_25
    new-instance v95, Lcom/vkcoffee/android/data/VKList;

    invoke-direct/range {v95 .. v95}, Lcom/vkcoffee/android/data/VKList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->photos:Lcom/vkcoffee/android/data/VKList;

    .line 550
    const-string v95, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_26

    const-string v95, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    if-eqz v95, :cond_26

    .line 551
    const-string v95, "photos"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-static {v0, v1}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v95

    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v47, v0

    .line 552
    .local v47, "jphotos":Lorg/json/JSONArray;
    if-eqz v47, :cond_26

    .line 553
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_1f
    invoke-virtual/range {v47 .. v47}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_78

    .line 558
    .end local v36    # "i":I
    .end local v47    # "jphotos":Lorg/json/JSONArray;
    :cond_26
    const-string v95, "market"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_28

    const-string v95, "market"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v95

    if-nez v95, :cond_28

    .line 559
    const-string v95, "market"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v59

    .line 560
    .local v59, "market":Lorg/json/JSONObject;
    const-string v95, "wiki"

    move-object/from16 v0, v59

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_27

    const-string v95, "wiki"

    move-object/from16 v0, v59

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v95

    if-nez v95, :cond_27

    .line 561
    new-instance v95, Lcom/vkcoffee/android/data/Wiki;

    const-string v96, "wiki"

    move-object/from16 v0, v59

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v96

    invoke-direct/range {v95 .. v96}, Lcom/vkcoffee/android/data/Wiki;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->marketWiki:Lcom/vkcoffee/android/data/Wiki;

    .line 563
    :cond_27
    const-string v95, "main_album_id"

    const/16 v96, -0x1

    move-object/from16 v0, v59

    move-object/from16 v1, v95

    move/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->marketMainAlbumId:I

    .line 565
    .end local v59    # "market":Lorg/json/JSONObject;
    :cond_28
    new-instance v95, Lcom/vkcoffee/android/data/VKList;

    invoke-direct/range {v95 .. v95}, Lcom/vkcoffee/android/data/VKList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->goods:Lcom/vkcoffee/android/data/VKList;

    .line 566
    const-string v95, "goods"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_29

    const-string v95, "goods"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    if-eqz v95, :cond_29

    .line 567
    const-string v95, "goods"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-static {v0, v1}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v95

    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v44, v0

    .line 568
    .local v44, "jgoods":Lorg/json/JSONArray;
    if-eqz v44, :cond_29

    .line 569
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_20
    invoke-virtual/range {v44 .. v44}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_79

    .line 574
    .end local v36    # "i":I
    .end local v44    # "jgoods":Lorg/json/JSONArray;
    :cond_29
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->audios:Ljava/util/ArrayList;

    .line 575
    const-string v95, "audios"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_2a

    const-string v95, "audios"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v95

    if-eqz v95, :cond_2a

    .line 576
    const-string v95, "audios"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v38

    .line 577
    .local v38, "jaudios":Lorg/json/JSONArray;
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_21
    invoke-virtual/range {v38 .. v38}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_7a

    .line 581
    .end local v36    # "i":I
    .end local v38    # "jaudios":Lorg/json/JSONArray;
    :cond_2a
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->videos:Ljava/util/ArrayList;

    .line 582
    const-string v95, "videos"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_2c

    const-string v95, "videos"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v95

    if-eqz v95, :cond_2c

    .line 583
    const-string v95, "videos"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v38

    .line 584
    .restart local v38    # "jaudios":Lorg/json/JSONArray;
    new-instance v86, Ljava/util/ArrayList;

    invoke-direct/range {v86 .. v86}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v86, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_22
    invoke-virtual/range {v38 .. v38}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_7b

    .line 595
    invoke-virtual/range {v86 .. v86}, Ljava/util/ArrayList;->size()I

    move-result v95

    if-lez v95, :cond_2c

    .line 597
    invoke-static/range {v86 .. v86}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v66

    .line 598
    .local v66, "profiles2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v61, Landroid/util/SparseArray;

    invoke-direct/range {v61 .. v61}, Landroid/util/SparseArray;-><init>()V

    .line 599
    .local v61, "p":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .line 600
    .local v37, "it":Ljava/util/Iterator;
    :goto_23
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v95

    if-nez v95, :cond_7e

    .line 604
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->videos:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    invoke-virtual/range {v95 .. v95}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .line 605
    :cond_2b
    :goto_24
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v95

    if-nez v95, :cond_7f

    .line 615
    .end local v36    # "i":I
    .end local v37    # "it":Ljava/util/Iterator;
    .end local v38    # "jaudios":Lorg/json/JSONArray;
    .end local v61    # "p":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v66    # "profiles2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v86    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2c
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->docs:Ljava/util/ArrayList;

    .line 616
    const-string v95, "docs"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_2d

    const-string v95, "docs"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v95

    if-eqz v95, :cond_2d

    .line 617
    const-string v95, "docs"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v42

    .line 618
    .local v42, "jdocs":Lorg/json/JSONArray;
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_25
    invoke-virtual/range {v42 .. v42}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_80

    .line 622
    .end local v36    # "i":I
    .end local v42    # "jdocs":Lorg/json/JSONArray;
    :cond_2d
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->topics:Ljava/util/ArrayList;

    .line 623
    const-string v95, "topics"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_2e

    const-string v95, "topics"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v95

    if-eqz v95, :cond_2e

    .line 624
    const-string v95, "topics"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v52

    .line 625
    .local v52, "jtopics":Lorg/json/JSONArray;
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_26
    invoke-virtual/range {v52 .. v52}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_81

    .line 629
    .end local v36    # "i":I
    .end local v52    # "jtopics":Lorg/json/JSONArray;
    :cond_2e
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->subscriptions:Ljava/util/ArrayList;

    .line 630
    const-string v95, "subscriptions"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_2f

    const-string v95, "subscriptions"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v95

    if-eqz v95, :cond_2f

    .line 631
    const-string v95, "subscriptions"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v51

    .line 632
    .local v51, "jsubs":Lorg/json/JSONArray;
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_27
    invoke-virtual/range {v51 .. v51}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_82

    .line 640
    .end local v36    # "i":I
    .end local v51    # "jsubs":Lorg/json/JSONArray;
    :cond_2f
    const-string v95, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    const-string v96, "audio"

    invoke-virtual/range {v95 .. v96}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_30

    .line 641
    new-instance v4, Lcom/vkcoffee/android/AudioFile;

    const-string v95, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    const-string v96, "audio"

    invoke-virtual/range {v95 .. v96}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    move-object/from16 v0, v95

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    .line 642
    .local v4, "audioFile":Lcom/vkcoffee/android/AudioFile;
    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->audioStatus:Lcom/vkcoffee/android/AudioFile;

    .line 643
    new-instance v95, Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    move-object/from16 v96, v0

    invoke-static/range {v96 .. v96}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v96

    invoke-direct/range {v95 .. v96}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v96, " - "

    invoke-virtual/range {v95 .. v96}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v95

    iget-object v0, v4, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    move-object/from16 v96, v0

    invoke-virtual/range {v95 .. v96}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->activity:Ljava/lang/String;

    .line 645
    .end local v4    # "audioFile":Lcom/vkcoffee/android/AudioFile;
    :cond_30
    new-instance v76, Lcom/vkcoffee/android/api/users/GetFullProfile$Result;

    invoke-direct/range {v76 .. v76}, Lcom/vkcoffee/android/api/users/GetFullProfile$Result;-><init>()V

    .line 646
    .local v76, "res":Lcom/vkcoffee/android/api/users/GetFullProfile$Result;
    move-object/from16 v0, v31

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/vkcoffee/android/api/users/GetFullProfile$Result;->profile:Lcom/vkcoffee/android/api/ExtendedUserProfile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 648
    .end local v13    # "counters":Lorg/json/JSONObject;
    .end local v31    # "ep":Lcom/vkcoffee/android/api/ExtendedUserProfile;
    .end local v76    # "res":Lcom/vkcoffee/android/api/users/GetFullProfile$Result;
    :catch_0
    move-exception v93

    .line 649
    .local v93, "x":Ljava/lang/Throwable;
    const-string v95, "vk"

    move-object/from16 v0, v95

    move-object/from16 v1, v93

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 650
    const/16 v76, 0x0

    goto/16 :goto_0

    .line 87
    .end local v93    # "x":Ljava/lang/Throwable;
    .restart local v31    # "ep":Lcom/vkcoffee/android/api/ExtendedUserProfile;
    :cond_31
    const/16 v95, 0x0

    goto/16 :goto_1

    .line 88
    :cond_32
    const/16 v95, 0x0

    goto/16 :goto_2

    .line 89
    :cond_33
    const/16 v95, 0x0

    goto/16 :goto_3

    .line 90
    :cond_34
    const/16 v95, 0x0

    goto/16 :goto_4

    .line 99
    :cond_35
    :try_start_1
    const-string v95, "photo_rec"

    goto/16 :goto_5

    .line 100
    :cond_36
    const/16 v95, 0x0

    goto/16 :goto_6

    .line 103
    :cond_37
    const/16 v95, 0x0

    goto/16 :goto_7

    .line 123
    .restart local v10    # "cities":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v36    # "i":I
    .restart local v40    # "jcities":Lorg/json/JSONArray;
    :cond_38
    move-object/from16 v0, v40

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 124
    .local v11, "city":Lorg/json/JSONObject;
    const-string v95, "id"

    move-object/from16 v0, v95

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    const-string v96, "title"

    move-object/from16 v0, v96

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    move/from16 v0, v95

    move-object/from16 v1, v96

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_8

    .line 129
    .end local v11    # "city":Lorg/json/JSONObject;
    .restart local v14    # "countries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v41    # "jcountries":Lorg/json/JSONArray;
    :cond_39
    move-object/from16 v0, v41

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 130
    .local v15, "country":Lorg/json/JSONObject;
    const-string v95, "id"

    move-object/from16 v0, v95

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    const-string v96, "title"

    move-object/from16 v0, v96

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    move/from16 v0, v95

    move-object/from16 v1, v96

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_9

    .line 132
    .end local v15    # "country":Lorg/json/JSONObject;
    :cond_3a
    const/16 v95, 0x0

    goto/16 :goto_a

    .line 133
    :cond_3b
    const/16 v95, 0x0

    goto/16 :goto_b

    .line 134
    :cond_3c
    const/16 v95, 0x0

    goto/16 :goto_c

    .line 136
    :cond_3d
    const/16 v95, 0x0

    goto/16 :goto_d

    .line 137
    :cond_3e
    const/16 v95, 0x0

    goto/16 :goto_e

    .line 193
    .restart local v78    # "schools":Lorg/json/JSONArray;
    :cond_3f
    new-instance v77, Lcom/vkcoffee/android/api/ExtendedUserProfile$School;

    invoke-direct/range {v77 .. v77}, Lcom/vkcoffee/android/api/ExtendedUserProfile$School;-><init>()V

    .line 194
    .local v77, "s":Lcom/vkcoffee/android/api/ExtendedUserProfile$School;
    move-object/from16 v0, v78

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v50

    .line 195
    .local v50, "js":Lorg/json/JSONObject;
    const-string v95, "city"

    move-object/from16 v0, v50

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Ljava/lang/String;

    move-object/from16 v0, v95

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$School;->city:Ljava/lang/String;

    .line 196
    const-string v95, "name"

    const-string v96, "???"

    move-object/from16 v0, v50

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$School;->name:Ljava/lang/String;

    .line 197
    const-string v95, "year_from"

    move-object/from16 v0, v50

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v77

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$School;->from:I

    .line 198
    const-string v95, "year_to"

    move-object/from16 v0, v50

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v77

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$School;->to:I

    .line 199
    const-string v95, "year_graduated"

    move-object/from16 v0, v50

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v77

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$School;->graduation:I

    .line 200
    const-string v95, "class"

    const/16 v96, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$School;->className:Ljava/lang/String;

    .line 201
    const-string v95, "speciality"

    const/16 v96, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$School;->speciality:Ljava/lang/String;

    .line 202
    const-string v95, "type_str"

    sget-object v96, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v96 .. v96}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v96

    const v97, 0x7f080409

    invoke-virtual/range {v96 .. v97}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v50

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$School;->type:Ljava/lang/String;

    .line 203
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->schools:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_f

    .line 210
    .end local v50    # "js":Lorg/json/JSONObject;
    .end local v77    # "s":Lcom/vkcoffee/android/api/ExtendedUserProfile$School;
    .restart local v87    # "univers":Lorg/json/JSONArray;
    :cond_40
    new-instance v83, Lcom/vkcoffee/android/api/ExtendedUserProfile$University;

    invoke-direct/range {v83 .. v83}, Lcom/vkcoffee/android/api/ExtendedUserProfile$University;-><init>()V

    .line 211
    .local v83, "u":Lcom/vkcoffee/android/api/ExtendedUserProfile$University;
    move-object/from16 v0, v87

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v53

    .line 212
    .local v53, "ju":Lorg/json/JSONObject;
    const-string v95, "city"

    move-object/from16 v0, v53

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Ljava/lang/String;

    move-object/from16 v0, v95

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$University;->city:Ljava/lang/String;

    .line 213
    const-string v95, "name"

    move-object/from16 v0, v53

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$University;->name:Ljava/lang/String;

    .line 214
    const-string v95, "faculty_name"

    move-object/from16 v0, v53

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_41

    .line 215
    const-string v95, "faculty_name"

    move-object/from16 v0, v53

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$University;->faculty:Ljava/lang/String;

    .line 217
    :cond_41
    const-string v95, "chair_name"

    move-object/from16 v0, v53

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_42

    .line 218
    const-string v95, "chair_name"

    move-object/from16 v0, v53

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$University;->chair:Ljava/lang/String;

    .line 220
    :cond_42
    const-string v95, "graduation"

    move-object/from16 v0, v53

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v83

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$University;->graduation:I

    .line 221
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->universities:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_10

    .line 257
    .end local v53    # "ju":Lorg/json/JSONObject;
    .end local v83    # "u":Lcom/vkcoffee/android/api/ExtendedUserProfile$University;
    :cond_43
    const/16 v95, 0x0

    goto/16 :goto_11

    .line 264
    .restart local v57    # "langs":Lorg/json/JSONArray;
    .restart local v63    # "personal":Lorg/json/JSONObject;
    .restart local v81    # "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_44
    move-object/from16 v0, v57

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v81

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_12

    .line 280
    .end local v57    # "langs":Lorg/json/JSONArray;
    .end local v81    # "sl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v49    # "jrelprofiles":Lorg/json/JSONArray;
    .restart local v74    # "relatives":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_45
    new-instance v88, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v49

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v95

    move-object/from16 v0, v88

    move-object/from16 v1, v95

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 281
    .local v88, "userProfile":Lcom/vkcoffee/android/UserProfile;
    move-object/from16 v0, v88

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v95, v0

    move-object/from16 v0, v74

    move/from16 v1, v95

    move-object/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_13

    .line 292
    .end local v88    # "userProfile":Lcom/vkcoffee/android/UserProfile;
    .restart local v9    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v34    # "grandchildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v35    # "grandparents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v62    # "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v75    # "rels":Lorg/json/JSONArray;
    .restart local v79    # "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_46
    move-object/from16 v0, v75

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v48

    .line 293
    .local v48, "jr":Lorg/json/JSONObject;
    const-string v95, "id"

    move-object/from16 v0, v48

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v85

    .line 294
    .local v85, "uid":I
    move-object/from16 v0, v74

    move/from16 v1, v85

    invoke-static {v0, v1}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v95

    if-eqz v95, :cond_48

    .line 295
    const-string v95, "type"

    move-object/from16 v0, v48

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-static/range {v95 .. v95}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v91

    .line 296
    .local v91, "valueOf":Ljava/lang/String;
    const/16 v60, -0x1

    .line 297
    .local v60, "obj":I
    invoke-virtual/range {v91 .. v91}, Ljava/lang/String;->hashCode()I

    move-result v95

    sparse-switch v95, :sswitch_data_0

    .line 329
    :cond_47
    :goto_28
    packed-switch v60, :pswitch_data_0

    .line 291
    .end local v60    # "obj":I
    .end local v91    # "valueOf":Ljava/lang/String;
    :cond_48
    :goto_29
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_14

    .line 299
    .restart local v60    # "obj":I
    .restart local v91    # "valueOf":Ljava/lang/String;
    :sswitch_0
    const-string v95, "parent"

    move-object/from16 v0, v91

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v95

    if-eqz v95, :cond_47

    .line 300
    const/16 v60, 0x4

    .line 301
    goto :goto_28

    .line 305
    :sswitch_1
    const-string v95, "grandparent"

    move-object/from16 v0, v91

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v95

    if-eqz v95, :cond_47

    .line 306
    const/16 v60, 0x1

    .line 307
    goto :goto_28

    .line 311
    :sswitch_2
    const-string v95, "child"

    move-object/from16 v0, v91

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v95

    if-eqz v95, :cond_47

    .line 312
    const/16 v60, 0x2

    .line 313
    goto :goto_28

    .line 317
    :sswitch_3
    const-string v95, "grandchild"

    move-object/from16 v0, v91

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v95

    if-eqz v95, :cond_47

    .line 318
    const/16 v60, 0x0

    .line 319
    goto :goto_28

    .line 323
    :sswitch_4
    const-string v95, "sibling"

    move-object/from16 v0, v91

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v95

    if-eqz v95, :cond_47

    .line 324
    const/16 v60, 0x3

    goto :goto_28

    .line 331
    :pswitch_0
    move-object/from16 v0, v74

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v34

    move-object/from16 v1, v95

    invoke-static {v0, v1}, Lcom/vkcoffee/android/utils/Utils;->addAndInitIfNeed(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v34

    .line 332
    goto :goto_29

    .line 334
    :pswitch_1
    move-object/from16 v0, v74

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v35

    move-object/from16 v1, v95

    invoke-static {v0, v1}, Lcom/vkcoffee/android/utils/Utils;->addAndInitIfNeed(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v35

    .line 335
    goto :goto_29

    .line 337
    :pswitch_2
    move-object/from16 v0, v74

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v95

    invoke-static {v9, v0}, Lcom/vkcoffee/android/utils/Utils;->addAndInitIfNeed(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    .line 338
    goto/16 :goto_29

    .line 340
    :pswitch_3
    move-object/from16 v0, v74

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v79

    move-object/from16 v1, v95

    invoke-static {v0, v1}, Lcom/vkcoffee/android/utils/Utils;->addAndInitIfNeed(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v79

    .line 341
    goto/16 :goto_29

    .line 343
    :pswitch_4
    move-object/from16 v0, v74

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v62

    move-object/from16 v1, v95

    invoke-static {v0, v1}, Lcom/vkcoffee/android/utils/Utils;->addAndInitIfNeed(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v62

    .line 344
    goto/16 :goto_29

    .line 359
    .end local v9    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v34    # "grandchildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v35    # "grandparents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v48    # "jr":Lorg/json/JSONObject;
    .end local v60    # "obj":I
    .end local v62    # "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v79    # "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v85    # "uid":I
    .end local v91    # "valueOf":Ljava/lang/String;
    .restart local v64    # "platform":I
    :cond_49
    const/16 v94, 0x1

    goto/16 :goto_15

    .line 371
    .end local v64    # "platform":I
    .restart local v32    # "friends":Lorg/json/JSONArray;
    .restart local v33    # "gifts":Lorg/json/JSONObject;
    :cond_4a
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friends:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    new-instance v96, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual/range {v95 .. v96}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_16

    .line 378
    .end local v32    # "friends":Lorg/json/JSONArray;
    .restart local v8    # "career":Lorg/json/JSONArray;
    :cond_4b
    move/from16 v0, v36

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v39

    .line 379
    .local v39, "jc":Lorg/json/JSONObject;
    new-instance v30, Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;

    invoke-direct/range {v30 .. v30}, Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;-><init>()V

    .line 380
    .local v30, "e":Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;
    const-string v95, "group"

    move-object/from16 v0, v39

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_4d

    .line 381
    new-instance v95, Lcom/vkcoffee/android/api/Group;

    const-string v96, "group"

    move-object/from16 v0, v39

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v96

    invoke-direct/range {v95 .. v96}, Lcom/vkcoffee/android/api/Group;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, v95

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;->group:Lcom/vkcoffee/android/api/Group;

    .line 385
    :goto_2a
    const-string v95, "from"

    move-object/from16 v0, v39

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;->yearFrom:I

    .line 386
    const-string v95, "until"

    move-object/from16 v0, v39

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;->yearTo:I

    .line 387
    const-string v95, "position"

    move-object/from16 v0, v39

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;->position:Ljava/lang/String;

    .line 388
    const-string v95, "city_id"

    move-object/from16 v0, v39

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_4c

    .line 389
    const-string v95, "city_id"

    move-object/from16 v0, v39

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Ljava/lang/String;

    move-object/from16 v0, v95

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;->city:Ljava/lang/String;

    .line 391
    :cond_4c
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->career:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_17

    .line 383
    :cond_4d
    const-string v95, "company"

    move-object/from16 v0, v39

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;->title:Ljava/lang/String;

    goto :goto_2a

    .line 398
    .end local v8    # "career":Lorg/json/JSONArray;
    .end local v30    # "e":Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;
    .end local v39    # "jc":Lorg/json/JSONObject;
    .restart local v17    # "df":Lorg/json/JSONArray;
    :cond_4e
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->displayFields:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    move-object/from16 v0, v17

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v96

    invoke-virtual/range {v95 .. v96}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_18

    .line 403
    .end local v10    # "cities":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v14    # "countries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v17    # "df":Lorg/json/JSONArray;
    .end local v33    # "gifts":Lorg/json/JSONObject;
    .end local v36    # "i":I
    .end local v40    # "jcities":Lorg/json/JSONArray;
    .end local v41    # "jcountries":Lorg/json/JSONArray;
    .end local v49    # "jrelprofiles":Lorg/json/JSONArray;
    .end local v63    # "personal":Lorg/json/JSONObject;
    .end local v74    # "relatives":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v75    # "rels":Lorg/json/JSONArray;
    .end local v78    # "schools":Lorg/json/JSONArray;
    .end local v87    # "univers":Lorg/json/JSONArray;
    :cond_4f
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v95, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/api/users/GetFullProfile;->uid:I

    move/from16 v96, v0

    move/from16 v0, v96

    move-object/from16 v1, v95

    iput v0, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 404
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v95, v0

    const-string v96, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v96

    move-object/from16 v1, v95

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 405
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    sget v95, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v97, 0x3f800000    # 1.0f

    cmpl-float v95, v95, v97

    if-lez v95, :cond_60

    const-string v95, "photo_100"

    :goto_2b
    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v96

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 406
    const-string v95, "photo_200"

    const-string v96, "photo_100"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    .line 407
    const-string v95, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->infoLine:Ljava/lang/String;

    .line 408
    const-string v95, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v95

    const-string v96, "text"

    invoke-virtual/range {v95 .. v96}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->activity:Ljava/lang/String;

    .line 409
    const-string v95, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    .line 410
    const-string v95, "start_date"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->eventStartTime:I

    .line 411
    const-string v95, "end_date"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->eventEndTime:I

    .line 412
    const-string v95, "site"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    .line 413
    const-string v95, "admin_level"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->adminLevel:I

    .line 414
    const-string v95, "verified"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_61

    const/16 v95, 0x1

    :goto_2c
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->verified:Z

    .line 415
    const-string v95, "can_message"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_62

    const/16 v95, 0x1

    :goto_2d
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->canWrite:Z

    .line 416
    const-string v95, "deactivated"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    invoke-static/range {v95 .. v95}, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;->parse(Ljava/lang/String;)Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->deactivated:Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    .line 417
    const-string v95, "ban_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_50

    .line 418
    const-string v95, "ban_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 419
    .local v5, "ban":Lorg/json/JSONObject;
    new-instance v95, Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;

    invoke-direct/range {v95 .. v95}, Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->ban:Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;

    .line 420
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->ban:Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;

    move-object/from16 v95, v0

    const-string v96, "comment"

    move-object/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v96

    move-object/from16 v1, v95

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;->comment:Ljava/lang/String;

    .line 421
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->ban:Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;

    move-object/from16 v95, v0

    const-string v96, "reason"

    move-object/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v96

    move/from16 v0, v96

    move-object/from16 v1, v95

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;->reason:I

    .line 422
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->ban:Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;

    move-object/from16 v95, v0

    const-string v96, "end_date"

    move-object/from16 v0, v96

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v96

    move/from16 v0, v96

    move-object/from16 v1, v95

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;->endTime:I

    .line 424
    .end local v5    # "ban":Lorg/json/JSONObject;
    :cond_50
    const-string v95, "invited_by"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_51

    .line 425
    new-instance v95, Lcom/vkcoffee/android/UserProfile;

    const-string v96, "invited_by"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v96

    invoke-direct/range {v95 .. v96}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->invitedBy:Lcom/vkcoffee/android/UserProfile;

    .line 427
    :cond_51
    const-string v95, "country_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v95

    if-nez v95, :cond_55

    const-string v95, "city_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v95

    if-nez v95, :cond_55

    .line 428
    new-instance v82, Ljava/util/ArrayList;

    invoke-direct/range {v82 .. v82}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v82, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v95, "country_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_52

    .line 430
    const-string v95, "country_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v82

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_52
    const-string v95, "city_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_53

    .line 433
    const/16 v95, 0x0

    const-string v96, "city_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v82

    move/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 435
    :cond_53
    const-string v95, "place"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_63

    .line 436
    const-string v95, "place"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v46

    .line 437
    .local v46, "jp":Lorg/json/JSONObject;
    const-string v95, "address"

    move-object/from16 v0, v46

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_54

    .line 438
    const/16 v95, 0x0

    const-string v96, "address"

    move-object/from16 v0, v46

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v82

    move/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 440
    :cond_54
    const-string v95, "latitude"

    const-wide v96, -0x3f3e6c0000000000L    # -9000.0

    move-object/from16 v0, v46

    move-object/from16 v1, v95

    move-wide/from16 v2, v96

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v96

    move-wide/from16 v0, v96

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lat:D

    .line 441
    const-string v95, "longitude"

    const-wide v96, -0x3f3e6c0000000000L    # -9000.0

    move-object/from16 v0, v46

    move-object/from16 v1, v95

    move-wide/from16 v2, v96

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v96

    move-wide/from16 v0, v96

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lon:D

    .line 446
    .end local v46    # "jp":Lorg/json/JSONObject;
    :goto_2e
    const-string v95, ", "

    move-object/from16 v0, v95

    move-object/from16 v1, v82

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    .line 448
    .end local v82    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_55
    const-string v95, "is_member"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    .line 449
    const-string v95, "is_closed"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->groupAccess:I

    .line 450
    const-string v95, "can_see_all_posts"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_64

    const/16 v95, 0x1

    :goto_2f
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    .line 451
    const-string v95, "member_status"

    move-object/from16 v0, v31

    iget v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    move/from16 v96, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    move/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    .line 452
    move-object/from16 v0, v31

    iget v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    move/from16 v95, v0

    const/16 v96, 0x3

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_56

    .line 453
    const/16 v95, 0x0

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    .line 455
    :cond_56
    const-string v95, "group"

    const-string v96, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    invoke-virtual/range {v95 .. v96}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v95

    if-eqz v95, :cond_57

    .line 456
    const/16 v95, 0x0

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->groupType:I

    .line 458
    :cond_57
    const-string v95, "event"

    const-string v96, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    invoke-virtual/range {v95 .. v96}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v95

    if-eqz v95, :cond_58

    .line 459
    const/16 v95, 0x1

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->groupType:I

    .line 461
    :cond_58
    const-string v95, "page"

    const-string v96, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    invoke-virtual/range {v95 .. v96}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v95

    if-eqz v95, :cond_59

    .line 462
    const/16 v95, 0x2

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->groupType:I

    .line 464
    :cond_59
    const-string v95, "can_post"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    const/16 v96, 0x1

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_65

    const/16 v95, 0x1

    :goto_30
    move/from16 v0, v95

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->canPost:Z

    .line 465
    const-string v95, "wiki_page"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_5a

    .line 466
    const-string v95, "wiki_page"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    .line 468
    :cond_5a
    const-string v95, "links"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_5b

    .line 469
    const-string v95, "links"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v58

    .line 470
    .local v58, "links":Lorg/json/JSONArray;
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->links:Ljava/util/ArrayList;

    .line 471
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_31
    invoke-virtual/range {v58 .. v58}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_66

    .line 488
    .end local v36    # "i":I
    .end local v58    # "links":Lorg/json/JSONArray;
    :cond_5b
    const-string v95, "contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_5d

    .line 489
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->contacts:Ljava/util/ArrayList;

    .line 490
    const-string v95, "contacts_profiles"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v89

    .line 491
    .local v89, "users":Lorg/json/JSONArray;
    new-instance v65, Landroid/util/SparseArray;

    invoke-direct/range {v65 .. v65}, Landroid/util/SparseArray;-><init>()V

    .line 492
    .local v65, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    if-eqz v89, :cond_5c

    .line 493
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_32
    invoke-virtual/range {v89 .. v89}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_6d

    .line 498
    .end local v36    # "i":I
    :cond_5c
    const-string v95, "contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 499
    .local v12, "contacts":Lorg/json/JSONArray;
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_33
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_6e

    .line 512
    .end local v12    # "contacts":Lorg/json/JSONArray;
    .end local v36    # "i":I
    .end local v65    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v89    # "users":Lorg/json/JSONArray;
    :cond_5d
    const-string v95, "members"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_5e

    .line 513
    const-string v95, "members"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 514
    .restart local v32    # "friends":Lorg/json/JSONArray;
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friends:Ljava/util/ArrayList;

    .line 515
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_34
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v95

    move/from16 v0, v36

    move/from16 v1, v95

    if-lt v0, v1, :cond_72

    .line 519
    .end local v32    # "friends":Lorg/json/JSONArray;
    .end local v36    # "i":I
    :cond_5e
    const-string v95, "main_album"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_5f

    const-string v95, "main_album"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v95

    if-nez v95, :cond_5f

    .line 520
    new-instance v95, Lcom/vkcoffee/android/api/PhotoAlbum;

    const-string v96, "main_album"

    move-object/from16 v0, p1

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v96

    invoke-direct/range {v95 .. v96}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, v95

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->mainAlbum:Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 522
    :cond_5f
    const-string v95, "main_section"

    move-object/from16 v0, p1

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v95

    move/from16 v0, v95

    move-object/from16 v1, v31

    iput v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->mainSection:I

    goto/16 :goto_19

    .line 405
    :cond_60
    const-string v95, "photo_50"

    goto/16 :goto_2b

    .line 414
    :cond_61
    const/16 v95, 0x0

    goto/16 :goto_2c

    .line 415
    :cond_62
    const/16 v95, 0x0

    goto/16 :goto_2d

    .line 443
    .restart local v82    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_63
    const-wide v96, -0x3f3e6c0000000000L    # -9000.0

    move-wide/from16 v0, v96

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lon:D

    .line 444
    const-wide v96, -0x3f3e6c0000000000L    # -9000.0

    move-wide/from16 v0, v96

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->lat:D

    goto/16 :goto_2e

    .line 450
    .end local v82    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_64
    const/16 v95, 0x0

    goto/16 :goto_2f

    .line 464
    :cond_65
    const/16 v95, 0x0

    goto/16 :goto_30

    .line 472
    .restart local v36    # "i":I
    .restart local v58    # "links":Lorg/json/JSONArray;
    :cond_66
    move-object/from16 v0, v58

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v45

    .line 473
    .local v45, "jl":Lorg/json/JSONObject;
    new-instance v56, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;

    invoke-direct/range {v56 .. v56}, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;-><init>()V

    .line 474
    .local v56, "l":Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;
    const-string v95, "url"

    move-object/from16 v0, v45

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v56

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;->url:Ljava/lang/String;

    .line 475
    const-string v95, "name"

    move-object/from16 v0, v45

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v56

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;->title:Ljava/lang/String;

    .line 476
    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;->title:Ljava/lang/String;

    move-object/from16 v95, v0

    if-eqz v95, :cond_67

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;->title:Ljava/lang/String;

    move-object/from16 v95, v0

    invoke-virtual/range {v95 .. v95}, Ljava/lang/String;->length()I

    move-result v95

    if-nez v95, :cond_68

    .line 477
    :cond_67
    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;->url:Ljava/lang/String;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v56

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;->title:Ljava/lang/String;

    .line 479
    :cond_68
    const-string v95, "desc"

    const-string v96, ""

    move-object/from16 v0, v45

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v56

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;->subtitle:Ljava/lang/String;

    .line 480
    sget v95, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v96, 0x3f800000    # 1.0f

    cmpl-float v95, v95, v96

    if-lez v95, :cond_6a

    const-string v95, "photo_100"

    :goto_35
    const/16 v96, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    move-object/from16 v1, v56

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;->photo:Ljava/lang/String;

    .line 481
    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;->photo:Ljava/lang/String;

    move-object/from16 v95, v0

    if-nez v95, :cond_69

    .line 482
    sget v95, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v96, 0x3f800000    # 1.0f

    cmpl-float v95, v95, v96

    if-lez v95, :cond_6b

    const/16 v80, 0x64

    .line 483
    .local v80, "size":I
    :goto_36
    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;->url:Ljava/lang/String;

    move-object/from16 v95, v0

    const-string v96, "//vk.com/"

    invoke-virtual/range {v95 .. v96}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v95

    if-eqz v95, :cond_6c

    new-instance v95, Ljava/lang/StringBuilder;

    const-string v96, "http://vk.com/images/lnkinner"

    invoke-direct/range {v95 .. v96}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v95

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v95

    const-string v96, ".gif"

    invoke-virtual/range {v95 .. v96}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v95

    :goto_37
    move-object/from16 v0, v95

    move-object/from16 v1, v56

    iput-object v0, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;->photo:Ljava/lang/String;

    .line 485
    .end local v80    # "size":I
    :cond_69
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->links:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_31

    .line 480
    :cond_6a
    const-string v95, "photo_50"

    goto :goto_35

    .line 482
    :cond_6b
    const/16 v80, 0x32

    goto :goto_36

    .line 483
    .restart local v80    # "size":I
    :cond_6c
    new-instance v95, Ljava/lang/StringBuilder;

    const-string v96, "http://vk.com/images/lnkouter"

    invoke-direct/range {v95 .. v96}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v95

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v95

    const-string v96, ".gif"

    invoke-virtual/range {v95 .. v96}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v95

    goto :goto_37

    .line 494
    .end local v45    # "jl":Lorg/json/JSONObject;
    .end local v56    # "l":Lcom/vkcoffee/android/api/ExtendedUserProfile$Link;
    .end local v58    # "links":Lorg/json/JSONArray;
    .end local v80    # "size":I
    .restart local v65    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v89    # "users":Lorg/json/JSONArray;
    :cond_6d
    new-instance v88, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v89

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v95

    move-object/from16 v0, v88

    move-object/from16 v1, v95

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 495
    .restart local v88    # "userProfile":Lcom/vkcoffee/android/UserProfile;
    move-object/from16 v0, v88

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v95, v0

    move-object/from16 v0, v65

    move/from16 v1, v95

    move-object/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_32

    .line 500
    .end local v88    # "userProfile":Lcom/vkcoffee/android/UserProfile;
    .restart local v12    # "contacts":Lorg/json/JSONArray;
    :cond_6e
    move/from16 v0, v36

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v39

    .line 501
    .restart local v39    # "jc":Lorg/json/JSONObject;
    new-instance v7, Lcom/vkcoffee/android/api/ExtendedUserProfile$Contact;

    invoke-direct {v7}, Lcom/vkcoffee/android/api/ExtendedUserProfile$Contact;-><init>()V

    .line 502
    .local v7, "c":Lcom/vkcoffee/android/api/ExtendedUserProfile$Contact;
    const-string v95, "desc"

    const-string v96, ""

    move-object/from16 v0, v39

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    iput-object v0, v7, Lcom/vkcoffee/android/api/ExtendedUserProfile$Contact;->title:Ljava/lang/String;

    .line 503
    const-string v95, "user_id"

    move-object/from16 v0, v39

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v95

    if-eqz v95, :cond_6f

    .line 504
    const-string v95, "user_id"

    move-object/from16 v0, v39

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v95

    move-object/from16 v0, v65

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v95

    iput-object v0, v7, Lcom/vkcoffee/android/api/ExtendedUserProfile$Contact;->user:Lcom/vkcoffee/android/UserProfile;

    .line 506
    :cond_6f
    const-string v95, "email"

    const/16 v96, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v95

    iput-object v0, v7, Lcom/vkcoffee/android/api/ExtendedUserProfile$Contact;->email:Ljava/lang/String;

    .line 507
    iget-object v0, v7, Lcom/vkcoffee/android/api/ExtendedUserProfile$Contact;->user:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v95, v0

    if-nez v95, :cond_70

    iget-object v0, v7, Lcom/vkcoffee/android/api/ExtendedUserProfile$Contact;->email:Ljava/lang/String;

    move-object/from16 v95, v0

    if-eqz v95, :cond_71

    .line 508
    :cond_70
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->contacts:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_71
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_33

    .line 516
    .end local v7    # "c":Lcom/vkcoffee/android/api/ExtendedUserProfile$Contact;
    .end local v12    # "contacts":Lorg/json/JSONArray;
    .end local v39    # "jc":Lorg/json/JSONObject;
    .end local v65    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v89    # "users":Lorg/json/JSONArray;
    .restart local v32    # "friends":Lorg/json/JSONArray;
    :cond_72
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friends:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    new-instance v96, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual/range {v95 .. v96}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_34

    .line 524
    .end local v32    # "friends":Lorg/json/JSONArray;
    .end local v36    # "i":I
    :cond_73
    const/16 v95, 0x0

    goto/16 :goto_1a

    .line 525
    :cond_74
    const/16 v95, 0x0

    goto/16 :goto_1b

    .line 531
    .restart local v13    # "counters":Lorg/json/JSONObject;
    .restart local v55    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_75
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/String;

    .line 532
    .local v54, "k":Ljava/lang/String;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    move-object/from16 v95, v0

    move-object/from16 v0, v54

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v96

    invoke-static/range {v96 .. v96}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v96

    move-object/from16 v0, v95

    move-object/from16 v1, v54

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    .line 538
    .end local v54    # "k":Ljava/lang/String;
    .end local v55    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_76
    if-eqz v13, :cond_24

    .line 539
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    move-object/from16 v96, v0

    const-string v97, "_subscriptions"

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    move-object/from16 v95, v0

    const-string v98, "subscriptions"

    move-object/from16 v0, v95

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Ljava/lang/Integer;

    move-object/from16 v0, v96

    move-object/from16 v1, v97

    move-object/from16 v2, v95

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    move-object/from16 v95, v0

    const-string v96, "subscriptions"

    const-string v97, "pages"

    move-object/from16 v0, v97

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v97

    const-string v98, "subscriptions"

    move-object/from16 v0, v98

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v98

    add-int v97, v97, v98

    invoke-static/range {v97 .. v97}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v97

    invoke-virtual/range {v95 .. v97}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    .line 546
    .restart local v36    # "i":I
    .restart local v43    # "jg":Lorg/json/JSONArray;
    :cond_77
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->groups:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    new-instance v96, Lcom/vkcoffee/android/api/Group;

    move-object/from16 v0, v43

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Lcom/vkcoffee/android/api/Group;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual/range {v95 .. v96}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_1e

    .line 554
    .end local v43    # "jg":Lorg/json/JSONArray;
    .restart local v47    # "jphotos":Lorg/json/JSONArray;
    :cond_78
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->photos:Lcom/vkcoffee/android/data/VKList;

    move-object/from16 v95, v0

    new-instance v96, Lcom/vkcoffee/android/Photo;

    move-object/from16 v0, v47

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual/range {v95 .. v96}, Lcom/vkcoffee/android/data/VKList;->add(Ljava/lang/Object;)Z

    .line 553
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_1f

    .line 570
    .end local v47    # "jphotos":Lorg/json/JSONArray;
    .restart local v44    # "jgoods":Lorg/json/JSONArray;
    :cond_79
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->goods:Lcom/vkcoffee/android/data/VKList;

    move-object/from16 v95, v0

    new-instance v96, Lcom/vkcoffee/android/data/Good;

    move-object/from16 v0, v44

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Lcom/vkcoffee/android/data/Good;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual/range {v95 .. v96}, Lcom/vkcoffee/android/data/VKList;->add(Ljava/lang/Object;)Z

    .line 569
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_20

    .line 578
    .end local v44    # "jgoods":Lorg/json/JSONArray;
    .restart local v38    # "jaudios":Lorg/json/JSONArray;
    :cond_7a
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->audios:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    new-instance v96, Lcom/vkcoffee/android/AudioFile;

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Lcom/vkcoffee/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual/range {v95 .. v96}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_21

    .line 586
    .restart local v86    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7b
    new-instance v92, Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v95

    move-object/from16 v0, v92

    move-object/from16 v1, v95

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/VideoFile;-><init>(Lorg/json/JSONObject;)V

    .line 587
    .local v92, "videoFile":Lcom/vkcoffee/android/api/VideoFile;
    move-object/from16 v0, v92

    iget v0, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    move/from16 v95, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v96, v0

    move-object/from16 v0, v96

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v96, v0

    move/from16 v0, v95

    move/from16 v1, v96

    if-ne v0, v1, :cond_7d

    .line 588
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v92

    iput-object v0, v1, Lcom/vkcoffee/android/api/VideoFile;->ownerName:Ljava/lang/String;

    .line 589
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v92

    iput-object v0, v1, Lcom/vkcoffee/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    .line 593
    :cond_7c
    :goto_38
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->videos:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_22

    .line 590
    :cond_7d
    move-object/from16 v0, v92

    iget v0, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    move/from16 v95, v0

    invoke-static/range {v95 .. v95}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v95

    move-object/from16 v0, v86

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v95

    if-nez v95, :cond_7c

    .line 591
    move-object/from16 v0, v92

    iget v0, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    move/from16 v95, v0

    invoke-static/range {v95 .. v95}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v95

    move-object/from16 v0, v86

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 601
    .end local v92    # "videoFile":Lcom/vkcoffee/android/api/VideoFile;
    .restart local v37    # "it":Ljava/util/Iterator;
    .restart local v61    # "p":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v66    # "profiles2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_7e
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lcom/vkcoffee/android/UserProfile;

    .line 602
    .local v84, "u2":Lcom/vkcoffee/android/UserProfile;
    move-object/from16 v0, v84

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v95, v0

    move-object/from16 v0, v61

    move/from16 v1, v95

    move-object/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_23

    .line 606
    .end local v84    # "u2":Lcom/vkcoffee/android/UserProfile;
    :cond_7f
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Lcom/vkcoffee/android/api/VideoFile;

    .line 607
    .local v90, "v":Lcom/vkcoffee/android/api/VideoFile;
    move-object/from16 v0, v90

    iget v0, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    move/from16 v95, v0

    move-object/from16 v0, v61

    move/from16 v1, v95

    invoke-static {v0, v1}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v95

    if-eqz v95, :cond_2b

    .line 608
    move-object/from16 v0, v90

    iget v0, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    move/from16 v95, v0

    move-object/from16 v0, v61

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lcom/vkcoffee/android/UserProfile;

    .line 609
    .restart local v84    # "u2":Lcom/vkcoffee/android/UserProfile;
    move-object/from16 v0, v84

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v90

    iput-object v0, v1, Lcom/vkcoffee/android/api/VideoFile;->ownerName:Ljava/lang/String;

    .line 610
    move-object/from16 v0, v84

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v95, v0

    move-object/from16 v0, v95

    move-object/from16 v1, v90

    iput-object v0, v1, Lcom/vkcoffee/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    goto/16 :goto_24

    .line 619
    .end local v37    # "it":Ljava/util/Iterator;
    .end local v38    # "jaudios":Lorg/json/JSONArray;
    .end local v61    # "p":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v66    # "profiles2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v84    # "u2":Lcom/vkcoffee/android/UserProfile;
    .end local v86    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v90    # "v":Lcom/vkcoffee/android/api/VideoFile;
    .restart local v42    # "jdocs":Lorg/json/JSONArray;
    :cond_80
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->docs:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    new-instance v96, Lcom/vkcoffee/android/api/Document;

    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Lcom/vkcoffee/android/api/Document;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual/range {v95 .. v96}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_25

    .line 626
    .end local v42    # "jdocs":Lorg/json/JSONArray;
    .restart local v52    # "jtopics":Lorg/json/JSONArray;
    :cond_81
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->topics:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    new-instance v96, Lcom/vkcoffee/android/api/BoardTopic;

    move-object/from16 v0, v52

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Lcom/vkcoffee/android/api/BoardTopic;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual/range {v95 .. v96}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_26

    .line 633
    .end local v52    # "jtopics":Lorg/json/JSONArray;
    .restart local v51    # "jsubs":Lorg/json/JSONArray;
    :cond_82
    move-object/from16 v0, v51

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v95

    const-string v96, "type"

    invoke-virtual/range {v95 .. v96}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    const-string v96, "profile"

    invoke-virtual/range {v95 .. v96}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v95

    if-eqz v95, :cond_83

    .line 634
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->subscriptions:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    new-instance v96, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v51

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual/range {v95 .. v96}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    :goto_39
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_27

    .line 636
    :cond_83
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->subscriptions:Ljava/util/ArrayList;

    move-object/from16 v95, v0

    new-instance v96, Lcom/vkcoffee/android/UserProfile;

    new-instance v97, Lcom/vkcoffee/android/api/Group;

    move-object/from16 v0, v51

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v98

    invoke-direct/range {v97 .. v98}, Lcom/vkcoffee/android/api/Group;-><init>(Lorg/json/JSONObject;)V

    invoke-direct/range {v96 .. v97}, Lcom/vkcoffee/android/UserProfile;-><init>(Lcom/vkcoffee/android/api/Group;)V

    invoke-virtual/range {v95 .. v96}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_39

    .line 297
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3b54f756 -> :sswitch_0
        -0xffe2f4a -> :sswitch_1
        0x5a3f51c -> :sswitch_2
        0x178dfb90 -> :sswitch_3
        0x7c3126c2 -> :sswitch_4
    .end sparse-switch

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/users/GetFullProfile;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/users/GetFullProfile$Result;

    move-result-object v0

    return-object v0
.end method
