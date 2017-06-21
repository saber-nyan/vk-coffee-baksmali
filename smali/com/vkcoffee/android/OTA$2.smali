.class Lcom/vkcoffee/android/OTA$2;
.super Ljava/lang/Object;
.source "OTA.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/OTA;->startUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 131
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 132
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$1()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u0411\u0430\u0433\u0438 \u0443\u0441\u0442\u0430\u0440\u0435\u0432\u0448\u0435\u0439 \u0432\u0435\u0440\u0441\u0438\u0438 \u0431\u0443\u0434\u0443\u0442 \u043f\u0440\u0435\u0441\u043b\u0435\u0434\u043e\u0432\u0430\u0442\u044c \u0412\u0430\u0441. \u041e\u043d\u043e \u0412\u0430\u043c \u043d\u0430\u0434\u043e? \u041e\u0434\u0443\u043c\u0430\u0439\u0442\u0435\u0441\u044c..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkcoffee/android/OTA;->access$15(Lcom/vkcoffee/android/VKAlertDialog$Builder;)V

    .line 134
    return-void
.end method
