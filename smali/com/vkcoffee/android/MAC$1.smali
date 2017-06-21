.class Lcom/vkcoffee/android/MAC$1;
.super Ljava/lang/Object;
.source "MAC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MAC;->viewAccs(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MAC$1;->val$activity:Landroid/app/Activity;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$1;->val$activity:Landroid/app/Activity;

    invoke-static {p2, v0}, Lcom/vkcoffee/android/MAC;->access$0(ILandroid/app/Activity;)V

    .line 118
    return-void
.end method
