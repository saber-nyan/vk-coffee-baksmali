.class public interface abstract annotation Lorg/mp4parser/aspectj/lang/annotation/AfterThrowing;
.super Ljava/lang/Object;
.source "AfterThrowing.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/mp4parser/aspectj/lang/annotation/AfterThrowing;
        argNames = ""
        pointcut = ""
        throwing = ""
        value = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract argNames()Ljava/lang/String;
.end method

.method public abstract pointcut()Ljava/lang/String;
.end method

.method public abstract throwing()Ljava/lang/String;
.end method

.method public abstract value()Ljava/lang/String;
.end method
