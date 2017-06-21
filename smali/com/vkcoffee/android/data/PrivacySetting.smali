.class public Lcom/vkcoffee/android/data/PrivacySetting;
.super Ljava/lang/Object;
.source "PrivacySetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;,
        Lcom/vkcoffee/android/data/PrivacySetting$Exclude;,
        Lcom/vkcoffee/android/data/PrivacySetting$Include;,
        Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;,
        Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    }
.end annotation


# static fields
.field public static final ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/data/PrivacySetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRIENDS:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

.field public static final FRIENDS_OF_FRIENDS:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

.field public static final FRIENDS_OF_FRIENDS_ONLY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

.field public static final NOBODY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

.field public static final ONLY_ME:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;


# instance fields
.field public displayStringTmp:Ljava/lang/CharSequence;

.field public key:Ljava/lang/String;

.field public possibleRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sectionKey:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7f0803c7

    const v6, 0x7f0803c6

    const v5, 0x7f0803c5

    const v4, 0x7f0803c4

    const v3, 0x7f0803b9

    .line 32
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "all"

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .line 33
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v2, 0x7f0803c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v3, 0x7f0803c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "only_me"

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->ONLY_ME:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .line 34
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "nobody"

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->NOBODY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .line 35
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "friends"

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .line 36
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "friends_of_friends"

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS_OF_FRIENDS:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .line 37
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "friends_of_friends_only"

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS_OF_FRIENDS_ONLY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .line 451
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/PrivacySetting$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->key:Ljava/lang/String;

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->sectionKey:Ljava/lang/String;

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 442
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 443
    iget-object v3, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    const-class v2, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 446
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 447
    iget-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 449
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/data/PrivacySetting$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/data/PrivacySetting$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/data/PrivacySetting;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/data/PrivacySetting;)V
    .locals 2
    .param p1, "other"    # Lcom/vkcoffee/android/data/PrivacySetting;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    .line 56
    iget-object v0, p1, Lcom/vkcoffee/android/data/PrivacySetting;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting;->key:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/vkcoffee/android/data/PrivacySetting;->sectionKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting;->sectionKey:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    iget-object v1, p1, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    iget-object v1, p1, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    .line 44
    const-string/jumbo v3, "key"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/data/PrivacySetting;->key:Ljava/lang/String;

    .line 45
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    .line 46
    const-string/jumbo v3, "section"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/data/PrivacySetting;->sectionKey:Ljava/lang/String;

    .line 47
    const-string/jumbo v3, "value"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 48
    .local v2, "val":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-static {v2}, Lcom/vkcoffee/android/data/PrivacySetting;->parseApiValue(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    const-string/jumbo v3, "supported_values"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 50
    .local v0, "allowed":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public static parseApiValue(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 13
    .param p0, "a"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const v12, 0x77359400

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 72
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .line 74
    .local v0, "baseRule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    const/4 v9, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    move v8, v9

    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 92
    sget-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->NOBODY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .line 95
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-gt v8, v10, :cond_2

    sget-object v8, Lcom/vkcoffee/android/data/PrivacySetting;->NOBODY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    if-eq v0, v8, :cond_2

    .line 96
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 148
    :cond_1
    :goto_2
    return-object v6

    .line 74
    :sswitch_0
    const-string/jumbo v11, "friends"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v8, "friends_of_friends"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v10

    goto :goto_0

    :sswitch_2
    const-string/jumbo v8, "friends_of_friends_only"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v8, "all"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v8, "only_me"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v8, "nobody"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    .line 76
    :pswitch_0
    sget-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .line 77
    goto :goto_1

    .line 79
    :pswitch_1
    sget-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS_OF_FRIENDS:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .line 80
    goto :goto_1

    .line 82
    :pswitch_2
    sget-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->FRIENDS_OF_FRIENDS_ONLY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .line 83
    goto :goto_1

    .line 85
    :pswitch_3
    sget-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .line 86
    goto :goto_1

    .line 88
    :pswitch_4
    sget-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->ONLY_ME:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .line 89
    goto :goto_1

    .line 98
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;>;"
    sget-object v8, Lcom/vkcoffee/android/data/PrivacySetting;->NOBODY:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    if-ne v0, v8, :cond_3

    const-string/jumbo v8, "nobody"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 100
    :cond_3
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_4
    const/4 v3, 0x0

    .line 103
    .local v3, "include":Lcom/vkcoffee/android/data/PrivacySetting$Include;
    const/4 v1, 0x0

    .line 104
    .local v1, "exclude":Lcom/vkcoffee/android/data/PrivacySetting$Exclude;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_d

    .line 105
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    .line 106
    .local v4, "iv":I
    if-eqz v4, :cond_9

    .line 107
    if-lez v4, :cond_7

    .line 108
    if-nez v3, :cond_5

    .line 109
    new-instance v3, Lcom/vkcoffee/android/data/PrivacySetting$Include;

    .end local v3    # "include":Lcom/vkcoffee/android/data/PrivacySetting$Include;
    invoke-direct {v3}, Lcom/vkcoffee/android/data/PrivacySetting$Include;-><init>()V

    .line 111
    .restart local v3    # "include":Lcom/vkcoffee/android/data/PrivacySetting$Include;
    :cond_5
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/data/PrivacySetting$Include;->add(I)V

    .line 104
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 113
    :cond_7
    if-nez v1, :cond_8

    .line 114
    new-instance v1, Lcom/vkcoffee/android/data/PrivacySetting$Exclude;

    .end local v1    # "exclude":Lcom/vkcoffee/android/data/PrivacySetting$Exclude;
    invoke-direct {v1}, Lcom/vkcoffee/android/data/PrivacySetting$Exclude;-><init>()V

    .line 116
    .restart local v1    # "exclude":Lcom/vkcoffee/android/data/PrivacySetting$Exclude;
    :cond_8
    neg-int v8, v4

    invoke-virtual {v1, v8}, Lcom/vkcoffee/android/data/PrivacySetting$Exclude;->add(I)V

    goto :goto_4

    .line 119
    :cond_9
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 120
    const-string/jumbo v8, "list"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 121
    const-string/jumbo v8, "list"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 122
    .local v5, "listID":I
    if-nez v3, :cond_a

    .line 123
    new-instance v3, Lcom/vkcoffee/android/data/PrivacySetting$Include;

    .end local v3    # "include":Lcom/vkcoffee/android/data/PrivacySetting$Include;
    invoke-direct {v3}, Lcom/vkcoffee/android/data/PrivacySetting$Include;-><init>()V

    .line 125
    .restart local v3    # "include":Lcom/vkcoffee/android/data/PrivacySetting$Include;
    :cond_a
    add-int v8, v5, v12

    invoke-virtual {v3, v8}, Lcom/vkcoffee/android/data/PrivacySetting$Include;->add(I)V

    goto :goto_4

    .line 126
    .end local v5    # "listID":I
    :cond_b
    const-string/jumbo v8, "-list"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 127
    const-string/jumbo v8, "-list"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 128
    .restart local v5    # "listID":I
    if-nez v1, :cond_c

    .line 129
    new-instance v1, Lcom/vkcoffee/android/data/PrivacySetting$Exclude;

    .end local v1    # "exclude":Lcom/vkcoffee/android/data/PrivacySetting$Exclude;
    invoke-direct {v1}, Lcom/vkcoffee/android/data/PrivacySetting$Exclude;-><init>()V

    .line 131
    .restart local v1    # "exclude":Lcom/vkcoffee/android/data/PrivacySetting$Exclude;
    :cond_c
    add-int v8, v5, v12

    invoke-virtual {v1, v8}, Lcom/vkcoffee/android/data/PrivacySetting$Exclude;->add(I)V

    goto :goto_4

    .line 136
    .end local v4    # "iv":I
    .end local v5    # "listID":I
    :cond_d
    if-eqz v3, :cond_e

    .line 137
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_e
    if-eqz v1, :cond_f

    .line 140
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 145
    sget-object v8, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        -0x73c81be9 -> :sswitch_1
        -0x4e4cdcf5 -> :sswitch_4
        -0x443b152c -> :sswitch_2
        -0x3e00811d -> :sswitch_5
        -0x23c4b66b -> :sswitch_0
        0x179a1 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public getApiValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    .line 66
    .local v0, "rule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    invoke-virtual {v0}, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;->apiValue()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 68
    .end local v0    # "rule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    :cond_0
    const-string/jumbo v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDisplayString()Ljava/lang/String;
    .locals 13

    .prologue
    const v12, 0x77359400

    const/4 v11, 0x0

    .line 154
    iget-object v9, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;

    if-nez v9, :cond_0

    .line 155
    iget-object v9, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-virtual {v9}, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;->displayValue()Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "subtitle":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 157
    .end local v7    # "subtitle":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    .line 159
    .local v6, "rule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    invoke-virtual {v6}, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;->displayValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    instance-of v10, v6, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;

    if-eqz v10, :cond_1

    .line 161
    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v3, v6

    .line 162
    check-cast v3, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;

    .line 163
    .local v3, "l":Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;->userCount()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 164
    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;->userIdAt(I)I

    move-result v8

    .line 165
    .local v8, "uid":I
    if-ge v8, v12, :cond_4

    .line 166
    invoke-static {v8}, Lcom/vkcoffee/android/data/Friends;->get(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v5

    .line 167
    .local v5, "p":Lcom/vkcoffee/android/UserProfile;
    if-eqz v5, :cond_3

    .line 168
    iget-object v10, v5, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .end local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    :goto_2
    invoke-virtual {v3}, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;->userCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v2, v10, :cond_2

    .line 184
    const-string/jumbo v10, ", "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 170
    .restart local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    const-string/jumbo v10, "id"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 174
    .end local v5    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_4
    sub-int v4, v8, v12

    .line 175
    .local v4, "lid":I
    invoke-static {v4}, Lcom/vkcoffee/android/data/Friends;->getListById(I)Lcom/vkcoffee/android/data/Friends$Folder;

    move-result-object v1

    .line 176
    .local v1, "ff":Lcom/vkcoffee/android/data/Friends$Folder;
    if-eqz v1, :cond_5

    .line 177
    iget-object v10, v1, Lcom/vkcoffee/android/data/Friends$Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 179
    :cond_5
    const-string/jumbo v10, "list"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 189
    .end local v1    # "ff":Lcom/vkcoffee/android/data/Friends$Folder;
    .end local v2    # "i":I
    .end local v3    # "l":Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;
    .end local v4    # "lid":I
    .end local v6    # "rule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    .end local v8    # "uid":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "subtitle":Ljava/lang/String;
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 424
    iget-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->sectionKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    iget-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    .line 429
    .local v0, "r":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 431
    .end local v0    # "r":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting;->possibleRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 433
    .local v1, "v":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 435
    .end local v1    # "v":Ljava/lang/String;
    :cond_1
    return-void
.end method
