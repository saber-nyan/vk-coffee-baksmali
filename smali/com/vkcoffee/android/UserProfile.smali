.class public Lcom/vkcoffee/android/UserProfile;
.super Lcom/vkcoffee/android/api/models/Model;
.source "UserProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vkcoffee/android/Indexable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_USER:Lcom/vkcoffee/android/UserProfile;

.field public static final OFFLINE:I = 0x0

.field public static final ONLINE_MOBILE_APP:I = 0x3

.field public static final ONLINE_MOBILE_SITE:I = 0x2

.field public static final ONLINE_SITE:I = 0x1


# instance fields
.field public bdate:Ljava/lang/String;

.field public city:I

.field public coffeeVer:Z

.field public country:I

.field public domain:Ljava/lang/String;

.field public extra:Landroid/os/Bundle;

.field public f:Z

.field public firstName:Ljava/lang/String;

.field public fullName:Ljava/lang/String;

.field public isFriend:Z

.field public isSelected:Z

.field public lastName:Ljava/lang/String;

.field public online:I

.field public photo:Ljava/lang/String;

.field public uid:I

.field public university:Ljava/lang/String;

.field public verified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/vkcoffee/android/UserProfile$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/UserProfile;->EMPTY_USER:Lcom/vkcoffee/android/UserProfile;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    .line 34
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 35
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 38
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 40
    const-string v0, "http://vkontakte.ru/images/question_c.gif"

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/vkcoffee/android/UserProfile;->coffeeVer:Z

    .line 47
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 48
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 49
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 50
    const-string v0, "http://vkontakte.ru/images/question_c.gif"

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 51
    iput v1, p0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 28
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    .line 34
    const-string v2, "DELETED"

    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 35
    const-string v2, "DELETED"

    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 38
    const-string v2, "DELETED"

    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 39
    iput v4, p0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 40
    const-string v2, "http://vkontakte.ru/images/question_c.gif"

    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 42
    const-string v2, ""

    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 44
    iput-boolean v4, p0, Lcom/vkcoffee/android/UserProfile;->coffeeVer:Z

    .line 59
    const/4 v1, 0x1

    .line 60
    .local v1, "z2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 67
    const/4 v0, 0x1

    .line 71
    .local v0, "z":Z
    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/UserProfile;->f:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 73
    const/4 v0, 0x1

    .line 77
    :goto_1
    iput-boolean v0, p0, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 83
    :cond_0
    iget v2, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Lcom/vkcoffee/android/ProfileStatic;->verDonnated(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Lcom/vkcoffee/android/ProfileStatic;->verHelpers(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    :cond_1
    const/4 v1, 0x1

    .line 86
    :cond_2
    iget v2, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Lcom/vkcoffee/android/ProfileStatic;->verDonnatedVerifCoffee(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    iput-boolean v3, p0, Lcom/vkcoffee/android/UserProfile;->coffeeVer:Z

    .line 90
    :cond_3
    iput-boolean v1, p0, Lcom/vkcoffee/android/UserProfile;->verified:Z

    .line 91
    return-void

    .line 69
    .end local v0    # "z":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "z":Z
    goto :goto_0

    .line 75
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/vkcoffee/android/api/Group;)V
    .locals 2
    .param p1, "g"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    .line 34
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 35
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 38
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 40
    const-string v0, "http://vkontakte.ru/images/question_c.gif"

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/vkcoffee/android/UserProfile;->coffeeVer:Z

    .line 157
    iget-object v0, p1, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 159
    iget v0, p1, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v0, v0

    iput v0, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 160
    iget-object v0, p1, Lcom/vkcoffee/android/api/Group;->domain:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 93
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 28
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    .line 34
    const-string v3, "DELETED"

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 35
    const-string v3, "DELETED"

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 38
    const-string v3, "DELETED"

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 39
    iput v8, p0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 40
    const-string v3, "http://vkontakte.ru/images/question_c.gif"

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 42
    const-string v3, ""

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 44
    iput-boolean v8, p0, Lcom/vkcoffee/android/UserProfile;->coffeeVer:Z

    .line 95
    const/4 v2, 0x1

    .line 96
    .local v2, "z2":Z
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 97
    const-string v3, "first_name"

    iget-object v4, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 98
    const-string v3, "last_name"

    iget-object v4, p0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 99
    const-string v3, "domain"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 101
    sget v3, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-gez v3, :cond_0

    sget-boolean v3, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v3, :cond_e

    :cond_0
    const-string v0, "photo_200"

    .line 102
    .local v0, "str":Ljava/lang/String;
    :goto_0
    const-string v3, "photo_100"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 103
    const-string v3, "sex"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_10

    .line 104
    const/4 v1, 0x1

    .line 108
    .local v1, "z":Z
    :goto_1
    iput-boolean v1, p0, Lcom/vkcoffee/android/UserProfile;->f:Z

    .line 109
    invoke-static {p1}, Lcom/vkcoffee/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 110
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 111
    const-string v3, "first_name_gen"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "last_name_gen"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    iget-object v3, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "name_gen"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "first_name_gen"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "last_name_gen"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    const-string v3, "first_name_dat"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "last_name_dat"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "name_dat"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "first_name_dat"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "last_name_dat"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_2
    const-string v3, "first_name_acc"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "last_name_acc"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    iget-object v3, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "name_acc"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "first_name_acc"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "last_name_acc"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_3
    const-string v3, "first_name_ins"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "last_name_ins"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 121
    iget-object v3, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "name_ins"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "first_name_ins"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "last_name_ins"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_4
    const-string v3, "first_name_abl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "last_name_abl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 124
    iget-object v3, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "name_abl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "first_name_abl"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "last_name_abl"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_5
    const-string v3, "university_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "university_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    .line 127
    const-string v3, "university_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 128
    const-string v3, "graduation"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "graduation"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_6

    .line 129
    iget-object v3, p0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \'%02d"

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "graduation"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    rem-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 136
    :cond_6
    :goto_2
    const-string v3, "verified"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "verified"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v7, :cond_8

    :cond_7
    iget v3, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Lcom/vkcoffee/android/ProfileStatic;->verDonnated(I)Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Lcom/vkcoffee/android/ProfileStatic;->verHelpers(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 137
    :cond_8
    iget-object v3, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "verified"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    iput-boolean v7, p0, Lcom/vkcoffee/android/UserProfile;->verified:Z

    .line 141
    :cond_9
    iget v3, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Lcom/vkcoffee/android/ProfileStatic;->verDonnatedVerifCoffee(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 142
    iput-boolean v7, p0, Lcom/vkcoffee/android/UserProfile;->coffeeVer:Z

    .line 145
    :cond_a
    const-string v3, "is_friend"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 146
    const-string v3, "is_friend"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v7, :cond_b

    .line 147
    const/4 v2, 0x0

    .line 149
    :cond_b
    iput-boolean v2, p0, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    .line 151
    :cond_c
    const-string v3, "description"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 152
    iget-object v3, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "description"

    const-string v5, "description"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_d
    return-void

    .line 101
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "z":Z
    :cond_e
    sget v3, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    const-string v0, "photo_100"

    goto/16 :goto_0

    :cond_f
    const-string v0, "photo_50"

    goto/16 :goto_0

    .line 106
    .restart local v0    # "str":Ljava/lang/String;
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "z":Z
    goto/16 :goto_1

    .line 131
    :cond_11
    const-string v3, "city"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 132
    const-string v3, "city"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private static getFirstChar(Ljava/lang/String;)C
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 239
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x20

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_0
.end method

.method private static getFirstChars(Ljava/lang/String;)[C
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 243
    if-nez p0, :cond_1

    .line 244
    const/4 v3, 0x1

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/16 v4, 0x20

    aput-char v4, v0, v3

    .line 251
    :cond_0
    return-object v0

    .line 246
    :cond_1
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "strings":[Ljava/lang/String;
    array-length v3, v2

    new-array v0, v3, [C

    .line 248
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 249
    aget-object v3, v2, v1

    invoke-static {v3}, Lcom/vkcoffee/android/UserProfile;->getFirstChar(Ljava/lang/String;)C

    move-result v3

    aput-char v3, v0, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static isWordStartFrom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 255
    if-nez p0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 258
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 259
    .local v0, "s1":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 260
    const/4 v1, 0x1

    goto :goto_0

    .line 258
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 229
    instance-of v1, p1, Lcom/vkcoffee/android/UserProfile;

    if-nez v1, :cond_1

    .line 235
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 232
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget v1, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v1, v2, :cond_0

    .line 233
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getIndexChars()[C
    .locals 3

    .prologue
    .line 267
    iget v0, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v1, 0x77359400

    if-le v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v0}, Lcom/vkcoffee/android/UserProfile;->getFirstChars(Ljava/lang/String;)[C

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkcoffee/android/UserProfile;->getFirstChar(Ljava/lang/String;)C

    move-result v2

    aput-char v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkcoffee/android/UserProfile;->getFirstChar(Ljava/lang/String;)C

    move-result v2

    aput-char v2, v0, v1

    goto :goto_0
.end method

.method public getNameInCase(I)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_0

    .line 178
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v1, "name_gen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v1, "name_dat"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_3
    iget-object v0, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v1, "name_acc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_4
    iget-object v0, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v1, "name_ins"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :pswitch_5
    iget-object v0, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v1, "name_abl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 274
    iget v0, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v1, 0x77359400

    if-le v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/UserProfile;->isWordStartFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 277
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User {id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], photo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", online="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/UserProfile;->online:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkcoffee/android/UserProfile;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 188
    const/4 v0, 0x1

    .line 189
    .local v0, "b":B
    iget v2, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v2, p0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget v2, p0, Lcom/vkcoffee/android/UserProfile;->online:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-boolean v2, p0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v2, :cond_4

    .line 196
    const/4 v1, 0x1

    .line 200
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-boolean v2, p0, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    if-eqz v2, :cond_5

    .line 202
    const/4 v1, 0x1

    .line 206
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v2, p0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 208
    iget-boolean v2, p0, Lcom/vkcoffee/android/UserProfile;->verified:Z

    if-nez v2, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 211
    :cond_0
    iget v2, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Lcom/vkcoffee/android/ProfileStatic;->verDonnated(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Lcom/vkcoffee/android/ProfileStatic;->verHelpers(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    :cond_1
    const/4 v0, 0x1

    .line 214
    :cond_2
    iget v2, p0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v2}, Lcom/vkcoffee/android/ProfileStatic;->verDonnatedVerifCoffee(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkcoffee/android/UserProfile;->coffeeVer:Z

    .line 217
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 218
    return-void

    .line 198
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    goto :goto_0

    .line 204
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method
