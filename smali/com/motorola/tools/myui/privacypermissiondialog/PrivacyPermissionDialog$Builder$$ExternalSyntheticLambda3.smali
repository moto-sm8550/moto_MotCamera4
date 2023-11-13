.class public final synthetic Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;ILcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;

    iput p2, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda3;->f$2:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;

    iget v1, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder$$ExternalSyntheticLambda3;->f$2:Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v2, Lcom/motorola/tools/myui/privacypermissiondialog/PermissionUtils;->sPermissionNameMap:Ljava/util/HashMap;

    const/16 v2, 0x3e8

    const/4 v3, -0x1

    if-le p1, v2, :cond_2

    const/16 v2, 0x7d0

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v2, Lcom/motorola/tools/myui/privacypermissiondialog/PermissionUtils;->sPermissionNameMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v3

    :goto_1
    if-eq p1, v3, :cond_3

    .line 4
    iget-object v0, v0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02f2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a02f1

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 9
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p0, p0, Lcom/motorola/tools/myui/privacypermissiondialog/PrivacyPermissionDialog;->messagesContainer:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method
