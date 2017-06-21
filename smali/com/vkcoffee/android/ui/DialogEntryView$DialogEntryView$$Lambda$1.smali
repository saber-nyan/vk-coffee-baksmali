.class public Lcom/vkcoffee/android/ui/DialogEntryView$DialogEntryView$$Lambda$1;
.super Ljava/lang/Object;
.source "DialogEntryView.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/DialogEntryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogEntryView$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/DialogEntryView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/DialogEntryView;)V
    .locals 0
    .param p1, "dialogEntryView"    # Lcom/vkcoffee/android/ui/DialogEntryView;

    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lcom/vkcoffee/android/ui/DialogEntryView$DialogEntryView$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/DialogEntryView;

    .line 611
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/DialogEntryView;)Lcom/vkcoffee/android/functions/VoidF0;
    .locals 1
    .param p0, "dialogEntryView"    # Lcom/vkcoffee/android/ui/DialogEntryView;

    .prologue
    .line 614
    new-instance v0, Lcom/vkcoffee/android/ui/DialogEntryView$DialogEntryView$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/DialogEntryView$DialogEntryView$$Lambda$1;-><init>(Lcom/vkcoffee/android/ui/DialogEntryView;)V

    return-object v0
.end method


# virtual methods
.method public f()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DialogEntryView$DialogEntryView$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/DialogEntryView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/DialogEntryView;->lambda$new$702()V

    .line 619
    return-void
.end method
