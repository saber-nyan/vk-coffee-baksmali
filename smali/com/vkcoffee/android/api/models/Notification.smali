.class public Lcom/vkcoffee/android/api/models/Notification;
.super Lcom/vkcoffee/android/api/models/Model;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/models/Notification$Activity;,
        Lcom/vkcoffee/android/api/models/Notification$FeedbackType;,
        Lcom/vkcoffee/android/api/models/Notification$ParentType;,
        Lcom/vkcoffee/android/api/models/Notification$Type;
    }
.end annotation


# instance fields
.field public commentID:I

.field public commentUser:Lcom/vkcoffee/android/UserProfile;

.field public date:I

.field private displayableText:Ljava/lang/CharSequence;

.field public feedBackUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field public grandParentPost:Lcom/vkcoffee/android/NewsEntry;

.field public group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/models/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

.field public link:Ljava/lang/CharSequence;

.field public parentPost:Lcom/vkcoffee/android/NewsEntry;

.field public stringDate:Ljava/lang/String;

.field public type:Lcom/vkcoffee/android/api/models/Notification$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 191
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Notification;->displayableText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/CharSequence;

    .prologue
    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    :try_start_0
    invoke-static {p1}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/models/Notification;->displayableText:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    invoke-static {v1, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    iput-object p1, p0, Lcom/vkcoffee/android/api/models/Notification;->displayableText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 96
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/models/Notification;->displayableText:Ljava/lang/CharSequence;

    goto :goto_0
.end method
