.class Lcom/vkcoffee/android/ProfileStatic$4;
.super Ljava/lang/Object;
.source "ProfileStatic.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ProfileStatic;->offlineOnlineBlock(Landroid/view/Menu;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ProfileStatic$4;->val$activity:Landroid/app/Activity;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "paramAnonymousMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 171
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/ProfileStatic$4$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ProfileStatic$4$1;-><init>(Lcom/vkcoffee/android/ProfileStatic$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileStatic$4;->val$activity:Landroid/app/Activity;

    const-string v1, "\u0421\u0442\u0430\u0442\u0443\u0441 Offline \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u0435\u043d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    const/4 v0, 0x1

    return v0
.end method
