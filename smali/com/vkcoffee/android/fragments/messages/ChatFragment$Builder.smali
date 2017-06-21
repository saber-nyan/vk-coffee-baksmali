.class public Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 3949
    const-class v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 3950
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3951
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3952
    return-void
.end method


# virtual methods
.method public setAttachments([Landroid/os/Parcelable;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    .locals 2
    .param p1, "var1"    # [Landroid/os/Parcelable;

    .prologue
    .line 3955
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "attachments"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3956
    return-object p0
.end method

.method public setFwd(Ljava/util/ArrayList;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    .locals 2
    .param p1, "var1"    # Ljava/util/ArrayList;

    .prologue
    .line 3960
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "fwd"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3961
    return-object p0
.end method

.method public setMessageId(I)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    .locals 2
    .param p1, "var1"    # I

    .prologue
    .line 3965
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3966
    return-object p0
.end method

.method public setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    .locals 2
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .prologue
    .line 3970
    if-eqz p1, :cond_0

    .line 3971
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "photo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3974
    :cond_0
    return-object p0
.end method

.method public setPhotos(Ljava/util/ArrayList;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    .locals 2
    .param p1, "var1"    # Ljava/util/ArrayList;

    .prologue
    .line 3978
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "photos"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3979
    return-object p0
.end method

.method public setPost(Landroid/os/Parcelable;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    .locals 2
    .param p1, "var1"    # Landroid/os/Parcelable;

    .prologue
    .line 3983
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "post"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3984
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    .locals 2
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 3988
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3989
    return-object p0
.end method
