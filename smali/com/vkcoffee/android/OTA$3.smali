.class Lcom/vkcoffee/android/OTA$3;
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
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 139
    invoke-static {}, Lcom/vkcoffee/android/OTA;->updateApk()V

    .line 140
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkcoffee/android/OTA;->access$15(Lcom/vkcoffee/android/VKAlertDialog$Builder;)V

    .line 141
    return-void
.end method
