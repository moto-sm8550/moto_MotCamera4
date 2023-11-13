.class public final Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1$1;
.super Ljava/lang/Object;
.source "DropDownPreferenceCategory.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;


# direct methods
.method public constructor <init>(Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1$1;->this$2:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1$1;->this$2:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;

    iget-object v0, p1, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget-object v1, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->this$0:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    iget-object v0, v0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$iconLayout:Landroid/widget/RelativeLayout;

    iget-object p1, p1, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->val$v:Landroid/view/View;

    invoke-static {v1, v0, p1}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->access$300(Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;Landroid/view/View;Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1$1;->this$2:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;

    iget-object p1, p1, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1$1;->this$1:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;

    iget-object p1, p1, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$1;->val$iconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
