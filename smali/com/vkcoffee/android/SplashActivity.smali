.class public Lcom/vkcoffee/android/SplashActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SplashActivity.java"


# static fields
.field public static STOP_SPLASH:Ljava/lang/String;


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "com.vkcoffee.android.STOP_SPLASH"

    sput-object v0, Lcom/vkcoffee/android/SplashActivity;->STOP_SPLASH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 15
    new-instance v0, Lcom/vkcoffee/android/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/SplashActivity$1;-><init>(Lcom/vkcoffee/android/SplashActivity;)V

    iput-object v0, p0, Lcom/vkcoffee/android/SplashActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 12
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f0301a5

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/SplashActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/vkcoffee/android/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "#5181B8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/vkcoffee/android/SplashActivity;->STOP_SPLASH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/vkcoffee/android/SplashActivity;->receiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/vkcoffee/android/SplashActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
