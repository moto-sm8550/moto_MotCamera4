.class public final Landroidx/databinding/adapters/TextViewBindingAdapter;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"


# direct methods
.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq p1, v0, :cond_a

    if-nez p1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 3
    :cond_0
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-nez v0, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eq v3, v4, :cond_4

    goto :goto_3

    :cond_4
    if-nez p1, :cond_5

    goto :goto_4

    .line 5
    :cond_5
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_6

    goto :goto_3

    :cond_6
    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_8

    .line 7
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    :goto_3
    move v1, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    if-nez v1, :cond_9

    return-void

    .line 8
    :cond_9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_5
    return-void
.end method
