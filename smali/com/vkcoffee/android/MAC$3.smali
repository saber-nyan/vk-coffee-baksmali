.class Lcom/vkcoffee/android/MAC$3;
.super Ljava/lang/Object;
.source "MAC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MAC;->accView(ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MAC$3;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/vkcoffee/android/MAC$3;->val$item:I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$3;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/vkcoffee/android/MAC$3;->val$item:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->goCheck(Landroid/app/Activity;I)V

    .line 143
    return-void
.end method
