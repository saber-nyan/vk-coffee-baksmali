.class public Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "FriendsRecommAttachment.java"


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public nextFrom:Ljava/lang/String;

.field public profiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p2, "nextFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;->profiles:Ljava/util/ArrayList;

    .line 23
    iput-object p2, p0, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;->nextFrom:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 5
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 38
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;->nextFrom:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 40
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 41
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    iget v1, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 42
    iget-object v1, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v1, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v1, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 45
    iget v1, v0, Lcom/vkcoffee/android/UserProfile;->online:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 46
    iget-boolean v1, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 47
    iget-boolean v1, v0, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 48
    iget-object v1, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/vkcoffee/android/SystemUtils;->serializeBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v1, v3

    .line 46
    goto :goto_1

    :cond_1
    move v1, v3

    .line 47
    goto :goto_2

    .line 50
    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    return-void
.end method
