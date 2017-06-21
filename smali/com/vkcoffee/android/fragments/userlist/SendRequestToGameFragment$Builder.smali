.class public Lcom/vkcoffee/android/fragments/userlist/SendRequestToGameFragment$Builder;
.super Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;
.source "SendRequestToGameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/userlist/SendRequestToGameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "appId"    # I

    .prologue
    .line 14
    const-class v0, Lcom/vkcoffee/android/fragments/userlist/SendRequestToGameFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;-><init>(Ljava/lang/Class;)V

    .line 15
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/SendRequestToGameFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    return-void
.end method
