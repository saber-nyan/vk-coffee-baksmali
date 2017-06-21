.class public Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "DocumentsFragmentBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "select"    # Z

    .prologue
    .line 8
    if-eqz p1, :cond_0

    const-class v0, Lcom/vkcoffee/android/fragments/documents/DocumentsChooserFragment;

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 9
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "select"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    return-void

    .line 8
    :cond_0
    const-class v0, Lcom/vkcoffee/android/fragments/documents/DocumentsViewFragment;

    goto :goto_0
.end method


# virtual methods
.method public setLimit(I)Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;
    .locals 2
    .param p1, "limit"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "limit"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    return-object p0
.end method

.method public setOwnerId(I)Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;
    .locals 2
    .param p1, "ownerId"    # I

    .prologue
    .line 17
    if-eqz p1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    :cond_0
    return-object p0
.end method
