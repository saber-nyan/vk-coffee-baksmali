.class Lcom/vkcoffee/android/ProfileStatic$2$1$2;
.super Ljava/lang/Object;
.source "ProfileStatic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ProfileStatic$2$1;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/ProfileStatic$2$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ProfileStatic$2$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ProfileStatic$2$1$2;->this$2:Lcom/vkcoffee/android/ProfileStatic$2$1;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 124
    return-void
.end method
