.class Lcom/vkcoffee/android/LinkRedirActivity$9$1;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LinkRedirActivity$9;->success([Lcom/vkcoffee/android/NewsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/LinkRedirActivity$9;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/LinkRedirActivity$9;

    .prologue
    .line 966
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$9$1;->this$1:Lcom/vkcoffee/android/LinkRedirActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 968
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$9$1;->this$1:Lcom/vkcoffee/android/LinkRedirActivity$9;

    iget-object v0, v0, Lcom/vkcoffee/android/LinkRedirActivity$9;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const v1, 0x7f0803aa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 969
    return-void
.end method
