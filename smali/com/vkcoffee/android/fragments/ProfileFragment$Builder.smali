.class public Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "peerId"    # I

    .prologue
    .line 662
    const-class v0, Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 663
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 664
    return-void
.end method


# virtual methods
.method public setFromPost(II)Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;
    .locals 4
    .param p1, "ownerId"    # I
    .param p2, "postId"    # I

    .prologue
    .line 667
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "from_post"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return-object p0
.end method

.method public setReferrer(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;
    .locals 2
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "referrer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-object p0
.end method
