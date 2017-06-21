.class Lcom/vkcoffee/android/activities/SignupActivity$2;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/activities/SignupActivity;->onPhoneDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/activities/SignupActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/activities/SignupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/activities/SignupActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/vkcoffee/android/activities/SignupActivity$2;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity$2;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vkcoffee/android/activities/SignupActivity;->access$000(Lcom/vkcoffee/android/activities/SignupActivity;I)V

    .line 153
    return-void
.end method
