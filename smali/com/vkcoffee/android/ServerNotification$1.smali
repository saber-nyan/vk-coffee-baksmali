.class Lcom/vkcoffee/android/ServerNotification$1;
.super Ljava/lang/Object;
.source "ServerNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ServerNotification;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ServerNotification;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ServerNotification;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ServerNotification$1;->this$0:Lcom/vkcoffee/android/ServerNotification;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 27
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 28
    return-void
.end method
