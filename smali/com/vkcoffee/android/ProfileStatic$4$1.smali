.class Lcom/vkcoffee/android/ProfileStatic$4$1;
.super Ljava/lang/Object;
.source "ProfileStatic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ProfileStatic$4;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ProfileStatic$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ProfileStatic$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ProfileStatic$4$1;->this$1:Lcom/vkcoffee/android/ProfileStatic$4;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 174
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->setOffline()V

    .line 175
    return-void
.end method
