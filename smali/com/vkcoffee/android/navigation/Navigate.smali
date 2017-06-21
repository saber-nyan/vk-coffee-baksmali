.class public final Lcom/vkcoffee/android/navigation/Navigate;
.super Ljava/lang/Object;
.source "Navigate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forResult(Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/Activity;I)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "act"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    new-instance v0, Lcom/vkcoffee/android/navigation/Navigator;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v0, p2, p3}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Activity;I)V

    .line 24
    return-void
.end method

.method public static to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/Activity;ZII)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "act"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "overlay"    # Z
    .param p4, "inAnim"    # I
    .param p5, "outAnim"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "ZII)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    new-instance v0, Lcom/vkcoffee/android/navigation/Navigator;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/vkcoffee/android/navigation/Navigator;->go(Landroid/app/Activity;ZII)V

    .line 19
    return-void
.end method

.method public static to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "act"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    new-instance v0, Lcom/vkcoffee/android/navigation/Navigator;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/navigation/Navigator;->go(Landroid/content/Context;)V

    .line 14
    return-void
.end method
