-- Make active-row views enforce the caller's permissions and base-table RLS.
DO $$
DECLARE
    view_name TEXT;
BEGIN
    FOREACH view_name IN ARRAY ARRAY[
        'employee_active',
        'department_active',
        'job_active',
        'jobhistory_active',
        'customer_active',
        'sales_active',
        'salesdetail_active',
        'product_active',
        'payment_active',
        'pricehist_active'
    ]
    LOOP
        EXECUTE format(
            'ALTER VIEW public.%I SET (security_invoker = true)',
            view_name
        );
    END LOOP;
END;
$$;