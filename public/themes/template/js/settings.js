<!-- app/views/settings/index.html.erb -->
<script>
  document.addEventListener("DOMContentLoaded", function() {
    const tabs = document.querySelectorAll(".tab-nav a");
    const tabPanes = document.querySelectorAll(".tab-pane");

    tabs.forEach((tab) => {
      tab.addEventListener("click", (event) => {
        event.preventDefault();

        // Remove active class from all tabs and tab panes
        tabs.forEach((t) => t.parentElement.classList.remove("active"));
        tabPanes.forEach((pane) => pane.classList.remove("active"));

        // Add active class to clicked tab and corresponding pane
        tab.parentElement.classList.add("active");
        const targetPane = document.querySelector(tab.getAttribute("href"));
        targetPane.classList.add("active");
      });
    });
  });
</script>
