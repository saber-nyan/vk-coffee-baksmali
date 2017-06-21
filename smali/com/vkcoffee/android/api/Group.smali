.class public Lcom/vkcoffee/android/api/Group;
.super Lcom/vkcoffee/android/api/models/Model;
.source "Group.java"

# interfaces
.implements Lcom/vkcoffee/android/Indexable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/Group$Authority;,
        Lcom/vkcoffee/android/api/Group$Privacy;,
        Lcom/vkcoffee/android/api/Group$Type;
    }
.end annotation


# static fields
.field public static final ADMIN_LEVEL_ADMIN:I = 0x3

.field public static final ADMIN_LEVEL_EDITOR:I = 0x2

.field public static final ADMIN_LEVEL_MODERATOR:I = 0x1

.field public static final ADMIN_LEVEL_NONE:I = 0x0

.field public static final CLOSED_GROUP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final OPEN_GROUP:I = 0x0

.field public static final PRIVATE_GROUP:I = 0x2

.field public static final TYPE_EVENT:I = 0x1

.field public static final TYPE_GROUP:I = 0x0

.field public static final TYPE_PUBLIC:I = 0x2


# instance fields
.field public activity:Ljava/lang/String;

.field public adminLevel:I

.field public canMessage:Z

.field public coffeeVer:Z

.field public domain:Ljava/lang/String;

.field public id:I

.field public isAdmin:Z

.field public isClosed:I

.field public members_count:I

.field public name:Ljava/lang/String;

.field public photo:Ljava/lang/String;

.field public startTime:I

.field public stringMembersCount:Ljava/lang/String;

.field public type:I

.field public verified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/vkcoffee/android/api/Group$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/Group$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/api/Group;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/Group;->coffeeVer:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "var1"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 53
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vkcoffee/android/api/Group;->coffeeVer:Z

    .line 60
    const/4 v1, 0x1

    .line 62
    .local v1, "var3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/api/Group;->id:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/api/Group;->domain:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    const/4 v0, 0x1

    .line 73
    .local v0, "var2":Z
    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/Group;->isAdmin:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/api/Group;->isClosed:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/api/Group;->type:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/api/Group;->startTime:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/api/Group;->adminLevel:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    const/4 v0, 0x1

    .line 84
    :goto_1
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/Group;->canMessage:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/api/Group;->members_count:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    move v0, v1

    .line 92
    .end local v0    # "var2":Z
    :goto_2
    iget v2, p0, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/ProfileStatic;->verDonnated(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/ProfileStatic;->verHelpers(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    .line 95
    :cond_1
    iget v2, p0, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/ProfileStatic;->verDonnatedVerifCoffee(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkcoffee/android/api/Group;->coffeeVer:Z

    .line 99
    :cond_2
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/Group;->verified:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/api/Group;->activity:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/api/Group;->stringMembersCount:Ljava/lang/String;

    .line 102
    return-void

    .line 70
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "var2":Z
    goto :goto_0

    .line 81
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 89
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "gr"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 53
    iput-boolean v4, p0, Lcom/vkcoffee/android/api/Group;->coffeeVer:Z

    .line 105
    const/4 v2, 0x1

    .line 108
    .local v2, "z":Z
    :try_start_0
    const-string v6, "id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/api/Group;->id:I

    .line 109
    const-string v6, "name"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    .line 110
    const-string v6, "screen_name"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/Group;->domain:Ljava/lang/String;

    .line 111
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/Group;->activity:Ljava/lang/String;

    .line 112
    const-string v6, "is_admin"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/vkcoffee/android/api/Group;->isAdmin:Z

    .line 113
    const-string v4, "admin_level"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/api/Group;->adminLevel:I

    .line 114
    const-string v4, "is_closed"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/api/Group;->isClosed:I

    .line 115
    sget v4, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v4, v4, v6

    if-gez v4, :cond_1

    sget-boolean v4, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v4, :cond_8

    :cond_1
    const-string v0, "photo_200"

    .line 116
    .local v0, "str":Ljava/lang/String;
    :goto_0
    const-string v4, "photo_100"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    .line 117
    const/4 v4, 0x0

    iput v4, p0, Lcom/vkcoffee/android/api/Group;->type:I

    .line 118
    const-string v4, "start_date"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/api/Group;->startTime:I

    .line 119
    const-string v4, "admin_level"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/api/Group;->adminLevel:I

    .line 120
    const-string v4, "can_message"

    const/4 v6, 0x1

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    .line 121
    const/4 v3, 0x1

    .line 125
    .local v3, "z2":Z
    :goto_1
    iput-boolean v3, p0, Lcom/vkcoffee/android/api/Group;->canMessage:Z

    .line 126
    const-string v4, "event"

    const-string v6, "type"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    const/4 v4, 0x1

    iput v4, p0, Lcom/vkcoffee/android/api/Group;->type:I

    .line 129
    :cond_2
    const-string v4, "page"

    const-string v6, "type"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    const/4 v4, 0x2

    iput v4, p0, Lcom/vkcoffee/android/api/Group;->type:I

    .line 132
    :cond_3
    const-string v4, "members_count"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/api/Group;->members_count:I

    .line 133
    const-string v4, "verified"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v5, :cond_4

    .line 134
    const/4 v2, 0x0

    .line 136
    :cond_4
    iget v4, p0, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v4, v4

    invoke-static {v4}, Lcom/vkcoffee/android/ProfileStatic;->verDonnated(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v4, v4

    invoke-static {v4}, Lcom/vkcoffee/android/ProfileStatic;->verHelpers(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 137
    :cond_5
    const/4 v2, 0x1

    .line 139
    :cond_6
    iget v4, p0, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v4, v4

    invoke-static {v4}, Lcom/vkcoffee/android/ProfileStatic;->verDonnatedVerifCoffee(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 140
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vkcoffee/android/api/Group;->coffeeVer:Z

    .line 142
    :cond_7
    iput-boolean v2, p0, Lcom/vkcoffee/android/api/Group;->verified:Z

    .line 146
    .end local v0    # "str":Ljava/lang/String;
    .end local v3    # "z2":Z
    :goto_2
    return-void

    .line 115
    :cond_8
    sget v4, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_9

    const-string v0, "photo_100"

    goto/16 :goto_0

    :cond_9
    const-string v0, "photo_50"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 123
    .restart local v0    # "str":Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "z2":Z
    goto :goto_1

    .line 143
    .end local v0    # "str":Ljava/lang/String;
    .end local v3    # "z2":Z
    :catch_0
    move-exception v1

    .line 144
    .local v1, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error parsing group"

    invoke-static {v4, v5, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "var1"    # Ljava/lang/Object;

    .prologue
    .line 153
    const/4 v0, 0x1

    .line 154
    .local v0, "var2":Z
    if-eq p0, p1, :cond_0

    .line 155
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    move-object v1, p1

    .line 156
    check-cast v1, Lcom/vkcoffee/android/api/Group;

    .line 157
    .local v1, "var3":Lcom/vkcoffee/android/api/Group;
    iget v2, p0, Lcom/vkcoffee/android/api/Group;->id:I

    iget v3, v1, Lcom/vkcoffee/android/api/Group;->id:I

    if-eq v2, v3, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 165
    .end local v1    # "var3":Lcom/vkcoffee/android/api/Group;
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndexChars()[C
    .locals 5

    .prologue
    .line 169
    iget-object v3, p0, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "var2":[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [C

    .line 172
    .local v2, "var3":[C
    const/4 v0, 0x0

    .local v0, "var1":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 178
    return-object v2

    .line 173
    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v2, v0

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/vkcoffee/android/api/Group;->id:I

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 3
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 193
    .local v0, "var2":Z
    :goto_0
    return v0

    .line 190
    .end local v0    # "var2":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "var2":Z
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "var1"    # Landroid/os/Parcel;
    .param p2, "var2"    # I

    .prologue
    .line 201
    const/4 v1, 0x1

    .line 202
    .local v1, "var4":B
    iget v2, p0, Lcom/vkcoffee/android/api/Group;->id:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v2, p0, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/vkcoffee/android/api/Group;->domain:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-boolean v2, p0, Lcom/vkcoffee/android/api/Group;->isAdmin:Z

    if-eqz v2, :cond_2

    .line 208
    const/4 v0, 0x1

    .line 213
    .local v0, "var3":B
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 214
    iget v2, p0, Lcom/vkcoffee/android/api/Group;->isClosed:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v2, p0, Lcom/vkcoffee/android/api/Group;->type:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v2, p0, Lcom/vkcoffee/android/api/Group;->startTime:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v2, p0, Lcom/vkcoffee/android/api/Group;->adminLevel:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-boolean v2, p0, Lcom/vkcoffee/android/api/Group;->canMessage:Z

    if-eqz v2, :cond_3

    .line 219
    const/4 v0, 0x1

    .line 224
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 225
    iget v2, p0, Lcom/vkcoffee/android/api/Group;->members_count:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-boolean v2, p0, Lcom/vkcoffee/android/api/Group;->verified:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/ProfileStatic;->verDonnated(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/ProfileStatic;->verHelpers(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    :cond_0
    move v0, v1

    .line 232
    .end local v0    # "var3":B
    :goto_2
    iget v2, p0, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/ProfileStatic;->verDonnatedVerifCoffee(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkcoffee/android/api/Group;->coffeeVer:Z

    .line 236
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 237
    iget-object v2, p0, Lcom/vkcoffee/android/api/Group;->activity:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/vkcoffee/android/api/Group;->stringMembersCount:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    return-void

    .line 210
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "var3":B
    goto :goto_0

    .line 221
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 229
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method
