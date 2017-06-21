.class public Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "GamesFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "userProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-class v0, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 19
    return-void
.end method
