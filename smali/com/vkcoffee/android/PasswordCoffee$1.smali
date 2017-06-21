.class Lcom/vkcoffee/android/PasswordCoffee$1;
.super Ljava/lang/Object;
.source "PasswordCoffee.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PasswordCoffee;->changePinCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PasswordCoffee;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PasswordCoffee;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/PasswordCoffee$1;->this$0:Lcom/vkcoffee/android/PasswordCoffee;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 68
    return-void
.end method
