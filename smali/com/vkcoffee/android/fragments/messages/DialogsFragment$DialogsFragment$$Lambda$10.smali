.class public Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$10;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogsFragment$$Lambda$10"
.end annotation


# static fields
.field private static final instance:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1464
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$10;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$10;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$10;->instance:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$10;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1468
    sget-object v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$10;->instance:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$$Lambda$10;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 1472
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->lambda$null$465()V

    .line 1473
    return-void
.end method
