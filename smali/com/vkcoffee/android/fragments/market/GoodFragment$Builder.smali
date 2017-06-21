.class public Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "GoodFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/market/GoodFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;II)V
    .locals 3
    .param p1, "source"    # Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ownerId"    # I
    .param p3, "goodId"    # I

    .prologue
    .line 126
    const-class v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 127
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "source"

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;Lcom/vkcoffee/android/data/Good;)V
    .locals 3
    .param p1, "source"    # Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "good"    # Lcom/vkcoffee/android/data/Good;

    .prologue
    .line 133
    const-class v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "owner_id"

    iget v2, p2, Lcom/vkcoffee/android/data/Good;->owner_id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "id"

    iget v2, p2, Lcom/vkcoffee/android/data/Good;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "source"

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method
