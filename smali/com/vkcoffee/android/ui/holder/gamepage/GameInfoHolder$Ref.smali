.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;
.super Ljava/lang/Object;
.source "GameInfoHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ref"
.end annotation


# instance fields
.field application:Lcom/vkcoffee/android/data/ApiApplication;

.field isExpand:Z

.field userProfiles:Ljava/util/ArrayList;
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
.method public constructor <init>(Lcom/vkcoffee/android/data/ApiApplication;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "application"    # Lcom/vkcoffee/android/data/ApiApplication;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "userProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->isExpand:Z

    .line 37
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->application:Lcom/vkcoffee/android/data/ApiApplication;

    .line 38
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->userProfiles:Ljava/util/ArrayList;

    .line 39
    return-void
.end method


# virtual methods
.method public getProfilePhoto(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsersCount()I
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->access$000()[I

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
