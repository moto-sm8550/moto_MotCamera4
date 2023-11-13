.class public final Lcom/google/android/material/resources/TextAppearance$2;
.super Landroidx/transition/PathMotion;
.source "TextAppearance.java"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/resources/TextAppearance;

.field public final synthetic val$callback:Landroidx/transition/PathMotion;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;Landroid/text/TextPaint;Landroidx/transition/PathMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance$2;->this$0:Lcom/google/android/material/resources/TextAppearance;

    iput-object p2, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$textPaint:Landroid/text/TextPaint;

    iput-object p4, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$callback:Landroidx/transition/PathMotion;

    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$callback:Landroidx/transition/PathMotion;

    invoke-virtual {p0, p1}, Landroidx/transition/PathMotion;->onFontRetrievalFailed(I)V

    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance$2;->this$0:Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance$2;->val$callback:Landroidx/transition/PathMotion;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/PathMotion;->onFontRetrieved(Landroid/graphics/Typeface;Z)V

    return-void
.end method
