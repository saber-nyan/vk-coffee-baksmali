.class public interface abstract annotation Lcom/vkcoffee/android/orm/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/vkcoffee/android/orm/View;
        inheritance = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/orm/View$MetaData;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract inheritance()Z
.end method

.method public abstract query()Ljava/lang/String;
.end method

.method public abstract value()Ljava/lang/String;
.end method
