.class public final Landroidx/core/text/PrecomputedTextCompat;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/PrecomputedTextCompat$Params;
    }
.end annotation


# virtual methods
.method public final charAt(I)C
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final getSpanEnd(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final getSpanFlags(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final getSpanStart(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public final length()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final nextSpanTransition(IILjava/lang/Class;)I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final removeSpan(Ljava/lang/Object;)V
    .locals 0

    .line 1
    instance-of p0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2
    throw p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSpan(Ljava/lang/Object;III)V
    .locals 0

    .line 1
    instance-of p0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2
    throw p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
