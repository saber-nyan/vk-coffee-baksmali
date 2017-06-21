.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$12;
.super Ljava/lang/Object;
.source "CoffeeInternalDebugFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getBlock1(Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;

.field private final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$12;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$12;->val$progress:Landroid/app/ProgressDialog;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$12;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 324
    return-void
.end method
