.class Lcom/vkcoffee/android/GoogleNow$1$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "GoogleNow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/GoogleNow$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/GoogleNow$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/GoogleNow$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/GoogleNow$1;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkcoffee/android/GoogleNow$1$1;->this$0:Lcom/vkcoffee/android/GoogleNow$1;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/vkcoffee/android/GoogleNow;->updateTokenAsync()V

    .line 33
    return-void
.end method
