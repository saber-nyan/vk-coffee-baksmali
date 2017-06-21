.class final synthetic Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

.field private final arg$2:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$7;->arg$1:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$7;->arg$2:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Landroid/graphics/Bitmap;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$7;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$7;-><init>(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$7;->arg$1:Lcom/vkcoffee/android/activities/PhoneVerificationActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$7;->arg$2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->lambda$null$163(Landroid/graphics/Bitmap;)V

    return-void
.end method
