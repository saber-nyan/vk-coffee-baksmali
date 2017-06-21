.class Lcom/vkcoffee/android/PinCodeViewCoffee$1;
.super Ljava/lang/Object;
.source "PinCodeViewCoffee.java"

# interfaces
.implements Lcom/vkcoffee/android/telegramutils/PasscodeView$PasscodeViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PinCodeViewCoffee;->showPasscodeActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PinCodeViewCoffee;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PinCodeViewCoffee;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/PinCodeViewCoffee$1;->this$0:Lcom/vkcoffee/android/PinCodeViewCoffee;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didAcceptedPassword()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->allOK()V

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/PinCodeViewCoffee$1;->this$0:Lcom/vkcoffee/android/PinCodeViewCoffee;

    invoke-virtual {v0}, Lcom/vkcoffee/android/PinCodeViewCoffee;->finish()V

    .line 67
    return-void
.end method
