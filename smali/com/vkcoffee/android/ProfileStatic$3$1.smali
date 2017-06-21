.class Lcom/vkcoffee/android/ProfileStatic$3$1;
.super Ljava/lang/Object;
.source "ProfileStatic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ProfileStatic$3;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ProfileStatic$3;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ProfileStatic$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ProfileStatic$3$1;->this$1:Lcom/vkcoffee/android/ProfileStatic$3;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 146
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 148
    return-void
.end method
