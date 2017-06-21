.class public Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "AuthCheckFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AuthCheckFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final CODE:Ljava/lang/String; = "code"

.field public static final IS_SMS:Ljava/lang/String; = "is_sms"

.field public static final PHONE:Ljava/lang/String; = "phone"

.field public static final SID:Ljava/lang/String; = "sid"


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "isSms"    # Z
    .param p3, "sid"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "is_sms"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public setCode(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-object p0
.end method
