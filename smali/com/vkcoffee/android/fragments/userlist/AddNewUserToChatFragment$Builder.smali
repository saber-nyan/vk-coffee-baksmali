.class public Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$Builder;
.super Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;
.source "AddNewUserToChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>([I)V
    .locals 2
    .param p1, "userExistIds"    # [I

    .prologue
    .line 16
    const-class v0, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;-><init>(Ljava/lang/Class;)V

    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "ids"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 18
    return-void
.end method
