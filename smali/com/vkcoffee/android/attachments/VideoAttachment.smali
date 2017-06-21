.class public Lcom/vkcoffee/android/attachments/VideoAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "VideoAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ThumbAttachment;
.implements Lcom/vkcoffee/android/attachments/ImageAttachment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/attachments/VideoAttachment$VideoAttachment$$Lambda$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;


# instance fields
.field public accessKey:Ljava/lang/String;

.field public bigImage:Ljava/lang/String;

.field private transient breakAfter:Z

.field private transient displayH:I

.field private transient displayW:I

.field public duration:I

.field private transient floating:Z

.field public image:Ljava/lang/String;

.field public transient isSingle:Z

.field public oid:I

.field public referer:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public vfile:Lcom/vkcoffee/android/api/VideoFile;

.field public vid:I

.field public views:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/vkcoffee/android/attachments/VideoAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/VideoAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 1
    .param p1, "var1"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 79
    iget-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->title:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->image:Ljava/lang/String;

    .line 81
    iget v0, p1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iput v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->oid:I

    .line 82
    iget v0, p1, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    iput v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vid:I

    .line 83
    iget v0, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    iput v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    .line 84
    iget-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->bigImage:Ljava/lang/String;

    .line 85
    iget v0, p1, Lcom/vkcoffee/android/api/VideoFile;->views:I

    iput v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->views:I

    .line 86
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "var1"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 90
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->title:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->image:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->bigImage:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->accessKey:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->oid:I

    .line 95
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vid:I

    .line 96
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    .line 97
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->views:I

    .line 98
    const-class v0, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->readSerializable(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Serializable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/VideoFile;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    .line 99
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->referer:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 8
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I

    .prologue
    .line 103
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # I
    .param p4, "var4"    # I
    .param p5, "var5"    # I
    .param p6, "var6"    # Ljava/lang/String;
    .param p7, "var7"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->title:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->image:Ljava/lang/String;

    .line 113
    iput p3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->oid:I

    .line 114
    iput p4, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vid:I

    .line 115
    iput p5, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    .line 116
    iput-object p6, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->accessKey:Ljava/lang/String;

    .line 117
    const-string v0, ""

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->accessKey:Ljava/lang/String;

    .line 121
    :cond_0
    iput p7, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->views:I

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/attachments/VideoAttachment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/VideoAttachment;->goView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/attachments/VideoAttachment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/attachments/VideoAttachment;->go(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private go(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 379
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 381
    return-void
.end method

.method private goView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 295
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v1, v1, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "youtube"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v1, v1, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    const-string v2, "youtube.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v1, v1, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    const-string v2, "youtu.be"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v1, v1, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/vkcoffee/android/attachments/VideoAttachment;->openYoutubeApp(Ljava/lang/String;Landroid/view/View;)V

    .line 310
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v1, v1, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "exVideoEX"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v1, v1, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/vkcoffee/android/attachments/VideoAttachment;->go(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 299
    :cond_2
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "exVideo"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/VideoAttachment;->showMenu(Landroid/view/View;)V

    goto :goto_0

    .line 303
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "file"

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 305
    const-string v1, "referrer"

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->referer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private openYoutubeApp(Ljava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 383
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 384
    .local v1, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 385
    .local v0, "foundApp":Z
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 392
    :goto_0
    if-nez v0, :cond_1

    .line 393
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 400
    return-void

    .line 385
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 386
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google.android.youtube"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 388
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showMenu(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 317
    const-string v3, "240p"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v3, "240"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkcoffee/android/api/VideoFile;->url360:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 321
    const-string v3, "360p"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v3, "360"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkcoffee/android/api/VideoFile;->url480:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 325
    const-string v3, "480p"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    const-string v3, "480"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkcoffee/android/api/VideoFile;->url720:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 329
    const-string v3, "720p"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v3, "720"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkcoffee/android/api/VideoFile;->url1080:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 333
    const-string v3, "1080"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    const-string v3, "1080"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 338
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "file"

    iget-object v4, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 340
    const-string v3, "referrer"

    iget-object v4, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->referer:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/high16 v4, 0x10a0000

    const v5, 0x10a0001

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 373
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 346
    :cond_5
    new-instance v3, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u043a\u0430\u0447\u0435\u0441\u0442\u0432\u043e"

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v5, Lcom/vkcoffee/android/attachments/VideoAttachment$3;

    invoke-direct {v5, p0, v0, p1}, Lcom/vkcoffee/android/attachments/VideoAttachment$3;-><init>(Lcom/vkcoffee/android/attachments/VideoAttachment;Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 370
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 125
    const v0, 0x7f10015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xd8d7d7

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    return-void
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/attachments/VideoAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 133
    const/16 v0, 0xe10

    return v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 141
    const v0, 0x3fe38e39

    return v0
.end method

.method public getThumbURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/content/Context;Z)Landroid/view/View;
    .locals 18
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Z

    .prologue
    .line 150
    if-nez p2, :cond_5

    .line 152
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->isSingle:Z

    if-eqz v11, :cond_4

    .line 153
    const-string v7, "video_single"

    .line 158
    .local v7, "var6":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/vkcoffee/android/attachments/VideoAttachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 163
    .end local v7    # "var6":Ljava/lang/String;
    .local v2, "var11":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    if-nez v11, :cond_0

    .line 164
    new-instance v11, Lcom/vkcoffee/android/api/VideoFile;

    invoke-direct {v11}, Lcom/vkcoffee/android/api/VideoFile;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    .line 165
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vid:I

    iput v12, v11, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    .line 166
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->oid:I

    iput v12, v11, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    .line 167
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->title:Ljava/lang/String;

    iput-object v12, v11, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    .line 168
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    iput v12, v11, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    .line 169
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->accessKey:Ljava/lang/String;

    iput-object v12, v11, Lcom/vkcoffee/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->views:I

    iput v12, v11, Lcom/vkcoffee/android/api/VideoFile;->views:I

    .line 171
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->image:Ljava/lang/String;

    iput-object v12, v11, Lcom/vkcoffee/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->image:Ljava/lang/String;

    iput-object v12, v11, Lcom/vkcoffee/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    .line 177
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->isSingle:Z

    if-eqz v11, :cond_6

    if-nez p2, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->displayW:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    sub-int v6, v11, v12

    .line 179
    .local v6, "var5":I
    int-to-float v11, v6

    const/high16 v12, 0x41800000    # 16.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x41100000    # 9.0f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 180
    .local v4, "var3":I
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    .line 181
    .local v5, "var4":I
    const v11, 0x7f10015a

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    sub-int v13, v4, v5

    invoke-direct {v12, v6, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .end local v4    # "var3":I
    .end local v5    # "var4":I
    .end local v6    # "var5":I
    :goto_2
    new-instance v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v12}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v12

    invoke-direct {v8, v11, v12}, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 187
    .local v8, "var7":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->breakAfter:Z

    iput-boolean v11, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 188
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->floating:Z

    iput-boolean v11, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 189
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->displayW:I

    iput v11, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    .line 190
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->displayH:I

    iput v11, v8, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->height:I

    .line 191
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->isSingle:Z

    if-nez v11, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->displayW:I

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-static {v12}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v12

    if-lt v11, v12, :cond_7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->displayH:I

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-static {v12}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v12

    if-lt v11, v12, :cond_7

    .line 193
    const v11, 0x7f10015b

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->isSingle:Z

    if-eqz v11, :cond_2

    if-nez p2, :cond_2

    .line 200
    const v11, 0x7f10013e

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v11, 0x7f10013f

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e004a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->views:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->views:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    const/16 v12, 0xe10

    if-ge v11, v12, :cond_8

    .line 205
    const v11, 0x7f100140

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const-string v12, "%d:%02d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    div-int/lit8 v15, v15, 0x3c

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    rem-int/lit8 v15, v15, 0x3c

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_4
    const v11, 0x7f100140

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 212
    .local v9, "var8":Landroid/view/View;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    if-lez v11, :cond_9

    .line 213
    const/4 v1, 0x0

    .line 218
    .local v1, "var10":B
    :goto_5
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    if-eqz p2, :cond_3

    .line 220
    const v11, 0x7f10015e

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 221
    .local v3, "var12":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 222
    .local v10, "var9":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    if-eqz v11, :cond_a

    .line 223
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget v4, v11, Lcom/vkcoffee/android/api/VideoFile;->views:I

    .line 228
    .restart local v4    # "var3":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    if-eqz v11, :cond_b

    .line 229
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget v5, v11, Lcom/vkcoffee/android/api/VideoFile;->views:I

    .line 234
    .restart local v5    # "var4":I
    :goto_7
    const v11, 0x7f0e004a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v4, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .end local v3    # "var12":Landroid/widget/TextView;
    .end local v4    # "var3":I
    .end local v5    # "var4":I
    .end local v10    # "var9":Landroid/content/res/Resources;
    :cond_3
    const v11, 0x7f10015a

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/attachments/VideoAttachment$VideoAttachment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/attachments/VideoAttachment;)Landroid/view/View$OnClickListener;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    return-object v2

    .line 155
    .end local v1    # "var10":B
    .end local v2    # "var11":Landroid/view/View;
    .end local v8    # "var7":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .end local v9    # "var8":Landroid/view/View;
    :cond_4
    const-string v7, "video"

    .restart local v7    # "var6":Ljava/lang/String;
    goto/16 :goto_0

    .line 160
    .end local v7    # "var6":Ljava/lang/String;
    :cond_5
    const v11, 0x7f030046

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "var11":Landroid/view/View;
    goto/16 :goto_1

    .line 183
    :cond_6
    const v11, 0x7f10015a

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->displayW:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->displayH:I

    invoke-direct {v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 195
    .restart local v8    # "var7":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_7
    const v11, 0x7f10015b

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 207
    :cond_8
    const v11, 0x7f100140

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const-string v12, "%d:%02d:%02d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    div-int/lit16 v15, v15, 0xe10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    div-int/lit8 v15, v15, 0x3c

    rem-int/lit8 v15, v15, 0x3c

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    rem-int/lit8 v15, v15, 0x3c

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 215
    .restart local v9    # "var8":Landroid/view/View;
    :cond_9
    const/4 v1, 0x4

    .restart local v1    # "var10":B
    goto/16 :goto_5

    .line 225
    .restart local v3    # "var12":Landroid/widget/TextView;
    .restart local v10    # "var9":Landroid/content/res/Resources;
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "var3":I
    goto/16 :goto_6

    .line 231
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "var4":I
    goto/16 :goto_7
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/view/View;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/attachments/VideoAttachment;->getView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 248
    const/16 v0, 0x1900

    return v0
.end method

.method public getWidth(C)I
    .locals 1
    .param p1, "var1"    # C

    .prologue
    .line 252
    const/16 v0, 0x1900

    return v0
.end method

.method lambda$getView$220(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 257
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-boolean v4, v4, Lcom/vkcoffee/android/api/VideoFile;->processing:Z

    if-nez v4, :cond_0

    .line 258
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 259
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 260
    :cond_0
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "exVideo"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 261
    .local v0, "b":Z
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-boolean v4, v4, Lcom/vkcoffee/android/api/VideoFile;->processing:Z

    if-nez v4, :cond_1

    .line 262
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 263
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 264
    :cond_1
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "exVideoEX"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 266
    .local v1, "b2":Z
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    .line 268
    :cond_2
    new-instance v2, Lcom/vkcoffee/android/api/video/VideoGetById;

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget v3, v3, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget-object v4, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget v4, v4, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    iget-object v5, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkcoffee/android/api/VideoFile;->accessKey:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/vkcoffee/android/api/video/VideoGetById;-><init>(IILjava/lang/String;)V

    new-instance v3, Lcom/vkcoffee/android/attachments/VideoAttachment$2;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/attachments/VideoAttachment$2;-><init>(Lcom/vkcoffee/android/attachments/VideoAttachment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/video/VideoGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 292
    :goto_2
    return-void

    .end local v0    # "b":Z
    .end local v1    # "b2":Z
    :cond_3
    move v0, v3

    .line 257
    goto :goto_0

    .restart local v0    # "b":Z
    :cond_4
    move v1, v3

    .line 261
    goto :goto_1

    .line 288
    .restart local v1    # "b2":Z
    :cond_5
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/VideoAttachment;->goView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "var1"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->bigImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->accessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 420
    iget v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->oid:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 421
    iget v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vid:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 422
    iget v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 423
    iget v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->views:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 424
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeSerializable(Lcom/vkcoffee/android/utils/Serializer$Serializable;)V

    .line 425
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->referer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/graphics/Bitmap;
    .param p3, "var3"    # Z

    .prologue
    const v2, 0x7f10015a

    .line 429
    iget-boolean v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->isSingle:Z

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 431
    .local v0, "var4":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 437
    .end local v0    # "var4":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setViewSize(FFZZ)V
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F
    .param p3, "var3"    # Z
    .param p4, "var4"    # Z

    .prologue
    .line 440
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->displayW:I

    .line 441
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->displayH:I

    .line 442
    iput-boolean p3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->breakAfter:Z

    .line 443
    iput-boolean p4, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->floating:Z

    .line 444
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->vid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 449
    .local v1, "var2":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->accessKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;->accessKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "var1":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 452
    .end local v0    # "var1":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .restart local v0    # "var1":Ljava/lang/String;
    goto :goto_0
.end method
