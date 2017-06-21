.class Lcom/vkcoffee/android/PhotoStatic$1$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PhotoStatic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoStatic$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/PhotoStatic$1;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoStatic$1;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoStatic$1$1;->this$1:Lcom/vkcoffee/android/PhotoStatic$1;

    iput-object p3, p0, Lcom/vkcoffee/android/PhotoStatic$1$1;->val$activity:Landroid/app/Activity;

    .line 20
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoStatic$1$1;->val$activity:Landroid/app/Activity;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 23
    return-void
.end method
