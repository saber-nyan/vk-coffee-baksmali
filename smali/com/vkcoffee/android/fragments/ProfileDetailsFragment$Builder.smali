.class public Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "ProfileDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    const-class v0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "items"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
